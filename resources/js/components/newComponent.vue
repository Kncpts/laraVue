<template>
<div class="row justify-content-center">
    <div class="col-md-11">
        <div class="card">
            <div class="card-header text-center font-weight-bold">
                Baggage Details Entry
            </div>

            <div class="card-body">
                <!--  -->

                <!--  -->
                <div v-if="responseSuccess" class="alert alert-success" role="alert">
                    <h6>record inserted success</h6>
                </div>
                <form name="myform" @submit.prevent="store" method="post" id="form">
                    <div class="row">
                        <div class="form-group">
                            <label for="destination">Destination</label>
                            <input type="text" class="form-control" id="destination" required name="destination" />
                        </div>
                    </div>

                    <div class="row m-1">
                        <div class="col-md-2">Item Name</div>
                        <div class="col-md-2">Description</div>
                        <div class="col-md-2">Quantity</div>
                        <div class="col-md-1">Weight</div>
                        <div class="col-md-1">Length</div>
                        <div class="col-md-1">Breath</div>
                        <div class="col-md-1">Height</div>
                    </div>

                    <div class="row">
                        {{ 1 }}
                        <div class="col-md-2">
                            <input min="0" step="0.001" type="text" name="item_name[]" id="item_name" class="form-control" required />
                        </div>
                        <div class="col-md-2">
                            <input min="0" step="0.001" type="text" name="description[]" id="description" class="form-control" required />
                        </div>
                        <div class="col-md-2">
                            <input min="0" step="0.001" type="number" name="quantity[]" id="quantity" class="form-control" required />
                        </div>
                        <div class="col-md-1">
                            <input min="0" step="0.001" type="number" name="weight[]" id="weight" class="form-control" required />
                        </div>
                        <div class="col-md-1">
                            <input min="0" step="0.001" type="number" name="length[]" id="length" class="form-control" required />
                        </div>
                        <div class="col-md-1">
                            <input min="0" step="0.001" type="number" name="breath[]" id="breath" class="form-control" required />
                        </div>
                        <div class="col-md-1">
                            <input min="0" step="0.001" type="number" name="height[]" id="height" class="form-control" required />
                        </div>
                        <div class="col-md-1">
                            <button type="button" @click="addRow" class="btn btn-danger">
                                Add
                            </button>
                        </div>
                    </div>
                    <div v-for="row in rowNo" v-bind:key="row" v-if="row > 1">
                        <div class="row mt-3">
                            {{ row }}
                            <div class="col-md-2">
                                <input min="0" step="0.001" type="text" name="item_name[]" :id="'item_name' + row" class="form-control" required />
                            </div>
                            <div class="col-md-2">
                                <input min="0" step="0.001" type="text" name="description[]" :id="'description' + row" class="form-control fc" />
                            </div>
                            <div class="col-md-2">
                                <input min="0" step="0.001" type="number" name="quantity[]" :id="'quantity' + row" class="form-control" required />
                            </div>
                            <div class="col-md-1">
                                <input min="0" step="0.001" type="number" name="weight[]" :id="'weight' + row" class="form-control" required />
                            </div>
                            <div class="col-md-1">
                                <input min="0" step="0.001" type="number" name="length[]" :id="'length' + row" class="form-control" required />
                            </div>
                            <div class="col-md-1">
                                <input min="0" step="0.001" type="number" name="breath[]" :id="'breath' + row" class="form-control" required />
                            </div>
                            <div class="col-md-1">
                                <input min="0" step="0.001" type="number" name="height[]" :id="'height' + row" class="form-control" required />
                            </div>
                            <div class="col-md-1">
                                <button type="button" @click="removeRow" class="btn btn-danger">
                                    Delete
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="row col-md-1 offset-md-8 m-5">
                        <button class="btn btn-primary" type="submit">
                            Submit
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!--  -->

        <div class="card">
            <div class="card-header text-center font-weight-bold">
                User Baggage Details
            </div>
            <div class="card-body">
                <table class="table table-bordered text-center">
                    <thead>
                        <tr>
                            <th>Destination</th>
                            <th>Date</th>
                            <th>Total Chrages</th>
                            <th>View Details</th>
                        </tr>
                    </thead>
                    <tbody v-for="baggage in usersDetails" :key="baggage.id">
                        <tr>
                            <td>{{ baggage.destination }}</td>
                            <td>{{ baggage.created_at }}</td>
                            <td>{{ baggage.total }}</td>
                            <td>
                                <button type="button" class="btn btn-primary" data-toggle="modal" @click="fetchDetails(baggage.id)" data-target=".bd-example-modal-lg">Details</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!--  -->
        <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Record Detail</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <div class="card">
                            <div class="card-header text-center font-weight-bold">
                                Baggage Details
                            </div>
                            <div class="card-body">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Description</th>
                                            <th>Quantity</th>
                                            <th>Weight</th>
                                            <th>Dimension</th>
                                        </tr>
                                    </thead>
                                    <tbody v-for="record in baggageRecord" :key="record.id">
                                        <tr>
                                            <td>{{ record.item_name }}</td>
                                            <td>{{ record.description }}</td>
                                            <td>{{ record.quantity }}</td>
                                            <td>{{ record.weight }}</td>
                                            <td><b>L:</b>{{ record.length }} <b>H:</b>{{ record.height }}  <b>B:</b>{{ record.breath }}     </td>
                                
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                         <div class="card">
                            <div class="card-header text-center font-weight-bold">
                                Payments Details
                            </div>
                            <div class="card-body">
                                <table class="table table-bordered text-center">
                                    <thead>
                                        <tr>
                                            <th>Air Frieght	</th>
                                            <th>Airport Transfer Charges</th>
                                            <th>Warehouse Service Charges</th>
                                            <th>Document Fee</th>
                                            <th>Handling Fee</th>
                                            <th>Inspection Fee</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>{{baggageDetailChild.air_freight}}</td>
                                            <td>{{baggageDetailChild.airport_transfer_charges}}</td>
                                            <td>{{baggageDetailChild.warehouse_services_charges}}</td>
                                            <td>{{baggageDetailChild.document_fee}}</td>
                                            <td>{{baggageDetailChild.handling_fee}}</td>
                                            <td>{{baggageDetailChild.inspection_fee}}</td>
                                            <td>{{baggageDetailChild.total}}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!--  -->
    </div>

</div>
</template>

<script>
export default {
    name: "baggageComponent",
    data() {
        return {
            rowNo: 1,
            responseMessage: "",
            responseSuccess: false,
            usersDetails: [],
            baggageRecord: [],
            baggageDetailChild:[]
        };
    },
    methods: {
        // adding row
        addRow: function (e) {
            e.preventDefault();
            this.rowNo++;
        },
        // deleting row
        removeRow: function (e) {
            e.preventDefault();
            this.rowNo--;
        },
        // storing data
        async store(e) {
            e.preventDefault();

            let row = "";
            let message = "";
            let successBool = "";
            let myForm = document.getElementById("form");
            let formData = new FormData(myForm);
            await axios
                .post("/addBaggage", formData)
                .then(response=> {
                  
                    e.target.reset();
                    row = 1;
                    message = response.message;
                    successBool = true;      
                    this.getUserRecotds()       
                })
                .catch(function (error) {});

            this.rowNo = row;
            this.responseMessage = message;
            this.responseSuccess = successBool;
        },
        getUserRecotds() {
            axios.get('/getDetails').then(response => {
                this.usersDetails = response.data.userBaggageDetails
            }).catch(function (error) {

            })
        },
        fetchDetails(baggae_id) {

            axios.get('/getBaggage/' + baggae_id).then(response => {
                this.baggageRecord=response.data.baggage_details
                this.baggageDetailChild=response.data
            }).catch(function (error) {

            })
        }

    },
     beforeMount() {
        this.getUserRecotds()
    }
};
</script>
