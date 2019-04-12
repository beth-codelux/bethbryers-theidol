<template>
    <modal name="modal-create" width="600" height="auto">
        <div class="p-4 row">
            <div class="col-12 form-group">
                <label for="createName">Name</label>
                <input type="text" class="form-control" id="createName">
            </div>
            <div class="col-8 form-group">
                <label for="createAddress">Address</label>
                <input type="text" class="form-control" id="createAddress">
            </div>
            <div class="col-4 form-group">
                <label for="createPostcode">Postcode</label>
                <input type="text" class="form-control" id="createPostcode">
            </div>
            <div class="col-12 form-group">
                <label for="createTelephone">Telephone</label>
                <input type="text" class="form-control" id="createTelephone">
            </div>
            <div class="col-12 form-group">
                <label for="createEmail">Email</label>
                <input type="email" class="form-control" id="createEmail">
            </div>
            <div class="col-12 form-group">
                <label for="createDob">Date of Birth</label>
                <input type="date" class="form-control" id="createDob">
            </div>
            <div class="col-12">
                <button type="button" class="btn btn-primary">Submit</button>
            </div>
        </div>
    </modal>
</template>

<script>
    export default {
        data: function(){
            return {

            }
        },
        mounted() {

        }
    }
</script>
