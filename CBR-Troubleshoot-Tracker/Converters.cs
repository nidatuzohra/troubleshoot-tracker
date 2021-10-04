using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace CBR_Troubleshoot_Tracker
{
    public class ResolutionConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            int num = (int)value;
            string message = string.Empty;
            switch (num)
            {
                case (int)ResolutionTypes.Resolved:
                    message = ResolutionTypes.Resolved.ToString();
                    break;
                case (int)ResolutionTypes.IT:
                    message = "Forwarded to IT";
                    break;
                case (int)ResolutionTypes.Other:
                    message = "Forwarded to Other";
                    break;
                case (int)ResolutionTypes.Unresolved:
                    message = ResolutionTypes.Unresolved.ToString();
                    break;
            }
            return message;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
