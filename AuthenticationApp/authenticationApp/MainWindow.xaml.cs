using MongoDB.Bson.Serialization.Attributes;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace authenticationApp
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		protected static IMongoClient _client;
		protected static IMongoDatabase _database;

		public MainWindow()
		{
			InitializeComponent();
			connect();
		}

		public void connect()
		{
			string connectionString = "mongodb://admin:admin123@ds159988.mlab.com:59988/users";

			MongoClientSettings settings = MongoClientSettings.FromUrl(new MongoUrl(connectionString));
			_client = new MongoClient(settings);
			_database = _client.GetDatabase("users");
		}

		private async void EnterBtn_Click(object sender, RoutedEventArgs e)
		{
			var username = userNameTxtBox.Text;
			var password = passwordTxtBox.Text;


			var collection = _database.GetCollection<user>("usertable");

			var result = await collection.Find(buildFilter(username, password)).ToListAsync();

			if (result.Count > 0)
			{
				MessageTxtBox.Text = "Successfully logged in!";
			}
			else
			{
				MessageTxtBox.Text = "Username or password incorrect! Please try again";
			}

		}

		private FilterDefinition<user> buildFilter(string username, string password)
		{
			var builder = Builders<user>.Filter;
			FilterDefinition<user> buildFilter = null;

			buildFilter = builder.Eq("user", username) & builder.Eq("password", password);


			return buildFilter;
		}
	}

	public class user
	{
		[BsonElement("_id")]
		public MongoDB.Bson.ObjectId Id { get; set; }

		[BsonElement("user")]
		public string User { get; set; }

		[BsonElement("password")]
		public string Password { get; set; }
	}
}
