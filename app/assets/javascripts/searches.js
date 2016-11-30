/*global $*/
$(document).ready(function() {
    $('#help_income').hover(function() {
        $('#help_income_show').show();
    }, function() {
        $('#help_income_show').hide();
    });
    
    $('#help_asset').hover(function() {
        $('#help_asset_show').show();
    }, function() {
        $('#help_asset_show').hide();
    });
    
    $('#help_household').hover(function() {
        $('#help_household_show').show();
    }, function() {
        $('#help_household_show').hide();
    });
    
    $('#help_veteran').hover(function() {
        $('#help_veteran_show').show();
    }, function() {
        $('#help_veteran_show').hide();
    });
    
    $('#help_disabled').hover(function() {
        $('#help_disabled_show').show();
    }, function() {
        $('#help_disabled_show').hide();
    });
});