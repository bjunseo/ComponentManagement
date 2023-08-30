using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace componentManagement
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private class component
        {
            public string Name { get; set; }

            public string Prod { get; set; }

            public string Cost { get; set; }

            public string Count { get; set; }
        }

        private ObservableCollection<component> _list;

        public MainWindow()
        {
            InitializeComponent();
        
             
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            _list = new ObservableCollection<component>
            {
                new component { Name = "나사", Prod = "OO주식회사", Cost = "50", Count = "200"}
            };

            DataGrid.ItemsSource = _list;
        }

        private void DataGrid_KeyDown(object sender, KeyEventArgs e)
        {
            
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            _list.Add(new component { Name = "", Prod = "", Cost = "", Count = "" });
            DataGrid.ItemsSource = _list;
        }

        private void btnImage_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();

            Image image = new Image();

            if (!ofd.ShowDialog() == DialogResult.GetValueOrDefault())
            {
                path.Content = ofd.FileName;
                Name.Content = ofd.SafeFileName;

                string path_ = ofd.FileName;

                CreateBitmap(image, path_);

                ImageTest.Children.Add(image);
            }
        }

        private void CreateBitmap(Image image, string imageList)
        {
            BitmapImage bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.CacheOption = BitmapCacheOption.OnDemand;
            bitmap.CreateOptions = BitmapCreateOptions.DelayCreation;
            bitmap.UriSource = new Uri(imageList);
            //bitmap.DecodePixelHeight = 180;
            //bitmap.DecodePixelWidth = 180;
            bitmap.EndInit();
            image.Source = bitmap;


        }
    }
}
