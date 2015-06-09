(function() {

    $.ajax({
        type: "post",
        url: "PhysicalResourceService.asmx/getResources",
        data: "{}",
        async:false,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (result) {
            console.log(result.d);
            window.temp = result.d.slice();
        }
    });

    var db = {

        loadData: function(filter) {
            return $.grep(this.clients, function(client) {
                return (!filter.Resource || client.Resource === filter.Resource)
                    && (!filter.Name || client.Name.indexOf(filter.Name) == 0)
                    && (!filter.Location || client.Location === filter.Location)
                    && (!filter.Floor || client.Floor === filter.Floor)
                    && (!filter.Capacity || client.Capacity.indexOf(filter.Capacity) == 0);
            });
        },

        insertItem: function(insertingClient) {
            this.clients.push(insertingClient);
        },

        updateItem: function (updatingClient) {
            console.log(updatingClient);
        },

        deleteItem: function(deletingClient) {
            var clientIndex = $.inArray(deletingClient, this.clients);
            this.clients.splice(clientIndex, 1);
        }

    };

    window.db = db;
    db.clients = temp;



    db.countries = [
        { Name: "", Id: 0 },
        { Name: "United States", Id: 1 },
        { Name: "Canada", Id: 2 },
        { Name: "United Kingdom", Id: 3 },
        { Name: "France", Id: 4 },
        { Name: "Brazil", Id: 5 },
        { Name: "China", Id: 6 },
        { Name: "Russia", Id: 7 }
    ];

    db.category = [
        { Name: "", Id: 0 },
        { Name: "Lecture Hall", Id: 1 },
        { Name: "Lab", Id: 2 }

    ];

    db.location = [
        { Name: "", Id: 0 },
        { Name: "A-Block", Id: 1 },
        { Name: "B-Block", Id: 2 },
        { Name: "D-Block", Id: 3 },
        { Name: "Engineering", Id: 4 }
    ];

    db.floor = [
        { Name: "", Id: 0 },
        { Name: "1st Floor", Id: 1 },
        { Name: "2nd Floor", Id: 2 },
        { Name: "3rd Floor", Id: 3 },
        { Name: "4th Floor", Id: 4 }
    ];

    console.log(db.clients);

}());