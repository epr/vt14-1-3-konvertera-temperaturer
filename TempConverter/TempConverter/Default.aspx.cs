﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TempConverter.Model;

namespace TempConverter
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Convert_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                ResultTable.Visible = true;
                var startTemperature = int.Parse(StartTemperature.Text);
                var endTemperature = int.Parse(EndTemperature.Text);
                var temperatureStep = int.Parse(TemperatureSteps.Text);
                for (var from = startTemperature; from <= endTemperature; from += temperatureStep)
                {
                    TableRow tableRow = new TableRow();
                    TableCell leftCell = new TableCell();
                    TableCell rightCell = new TableCell();
                    var to = CtoF.Checked ? TemperatureConverter.CelsiusToFahrenheit(from) : TemperatureConverter.FahrenheitToCelsius(from);
                    ResultTable.Rows.Add(tableRow);
                    tableRow.Cells.Add(leftCell);
                    tableRow.Cells.Add(rightCell);
                    leftCell.Text = string.Format("{0}", from);
                    rightCell.Text = string.Format("{0}", to);
                }
            }
        }
    }
}