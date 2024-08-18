# JavaScript Cheat Sheet

 
### Javascript Cheat Sheet

| Category | Command | Description |
| -------- | ------- | ----------- |
| Variables | `var name = 'John';` | Declares a variable with the name `name` and assigns it the string `John`. |
| Variables | `let name = 'John';` | Similar to var, but with block scope. |
| Variables | `const name = 'John';` | Declares a constant variable `name`. It cannot be reassigned. |
| Data Types | `typeof variable` | Returns the data type of `variable`. |
| Functions | `function name() {}` | Declares a function named `name`. |
| Functions | `() => {}` | Declares an arrow function. |
| Functions | `name()` | Calls the function `name`. |
| Control Flow | `if (condition) {}` | Executes a block of code if `condition` is true. |
| Control Flow | `for (let i = 0; i < 10; i++) {}` | A `for` loop that runs 10 times. |
| Control Flow | `while (condition) {}` | A `while` loop that runs as long as `condition` is true. |
| Objects | `let obj = {};` | Creates an empty object. |
| Objects | `obj.property = 'value';` | Sets the property `property` of `obj` to `'value'`. |
| Objects | `obj['property'] = 'value';` | Another way to set a property of an object. |
| Arrays | `let arr = [];` | Creates an empty array. |
| Arrays | `arr.push('item');` | Adds `'item'` to the end of `arr`. |
| Arrays | `arr.pop();` | Removes the last item from `arr`. |
| Arrays | `arr[i];` | Accesses the ith element of `arr`. |
| Error Handling | `try {} catch (e) {}` | Tries to execute a block of code, and catches any errors that occur. |
| Error Handling | `throw new Error();` | Throws an error. |
| Strings | `'Hello'.length;` | Returns the length of the string. |
| Strings | `'Hello'.toUpperCase();` | Converts the string to uppercase. |
| Strings | `'Hello'.substring(0, 2);` | Extracts a section of a string and returns a new string. |
| Strings | `'Hello'.split('e');` | Splits the string into an array of substrings. |
| Numbers | `Math.random();` | Returns a random number between 0 (inclusive) and 1 (exclusive). |
| Numbers | `Math.floor(1.9);` | Returns the largest integer less than or equal to a number. |
| Arrays | `arr.slice(1,3);` | Returns a shallow copy of a portion of an array into a new array object. |
| Arrays | `arr.indexOf('item');` | Returns the first index at which a given element can be found in the array, or -1 if it is not present. |
| Arrays | `arr.every((value) => value > 0);` | Tests whether all elements in the array pass the test implemented by the provided function. |
| Arrays | `arr.some((value) => value > 0);` | Tests whether at least one element in the array passes the test implemented by the provided function. |
| Dates | `let now = new Date();` | Creates a new date object with the current date and time. |
| Dates | `now.getFullYear();` | Returns the year of the specified date according to local time. |
| JSON | `JSON.stringify(obj);` | Converts a JavaScript object into a JSON string. |
| JSON | `JSON.parse(json);` | Converts a JSON string into a JavaScript object. |
| Timers | `setTimeout(function, milliseconds);` | Executes a function after waiting a specified number of milliseconds. |
| Timers | `setInterval(function, milliseconds);` | Repeatedly executes a function, with a fixed time delay between each call. |
| Promises | `new Promise((resolve, reject) => {});` | Creates a new Promise. |
| Promises | `Promise.all([promise1, promise2]);` | Returns a promise that either fulfills when all of the promises in the iterable argument have fulfilled or rejects as soon as one of the promises in the iterable argument rejects. |
| Promises | `promise.then(value => {}, reason => {});` | Appends fulfillment and rejection handlers to the promise, and returns a new promise resolving to the return value of the called handler. |
| Promises | `promise.catch(reason => {});` | Appends a rejection handler to the promise, and returns a new promise resolving to the return value of the called handler. |
| Promises | `promise.finally(() => {});` | Appends a handler to the promise, and returns a new promise that is resolved when the original promise is resolved. The handler is called when the promise settles, whether it fulfills or rejects. |

### Vue.js Cheat Sheet

| Category | Command | Description |
| -------- | ------- | ----------- |
| Vue Instance | `new Vue({ el: '#app' })` | Creates a new Vue instance, targeting the element with the id `app`. |
| Template Syntax | `{{ message }}` | Interpolates the variable `message` into the template. |
| Directives | `v-bind:title="message"` | Binds the `title` attribute to the variable `message`. |
| Directives | `v-if="isVisible"` | Conditionally renders the element based on the value of `isVisible`. |
| Directives | `v-for="item in items"` | Loops over `items` and renders the element for each one. |
| Directives | `v-on:click="handleClick"` | Attaches an event listener for the `click` event that calls the method `handleClick`. |
| Directives | `v-model="message"` | Creates a two-way data binding on an form input element or a component. |
| Directives | `v-show="isVisible"` | Toggles the element's `display` CSS property based on the truthiness of the expression. |
| Directives | `v-html="htmlContent"` | Inserts raw HTML into the element, beware of XSS attacks. |
| Directives | `v-pre` | Skips compilation for this element and all its children. |
| Directives | `v-once` | Render the element and component once only. On subsequent re-renders, the element/component and all its
| Components | `Vue.component('my-component', {})` | Registers
| Components | `Vue.component('my-component', {})` | Registers a global component named `'my-component'`. |
| Components | `components: { 'my-component': Component }` | Registers a local component named `'my-component'`. |
| Lifecycle Hooks | `created() {}` | Lifecycle hook called after the instance has been created. |
| Lifecycle Hooks | `mounted() {}` | Lifecycle hook called after the instance has been mounted. |
| Lifecycle Hooks | `updated() {}` | Lifecycle hook called after the instance has been updated. |
| Lifecycle Hooks | `destroyed() {}` | Lifecycle hook called after the instance has been destroyed. |
| Computed Properties | `computed: { fullName() { return this.firstName + ' ' + this.lastName; } }` | Defines a computed property `fullName`. |
| Watchers | `watch: { firstName(val) { this.fullName = val + ' ' + this.lastName; } }` | Defines a watcher on the `firstName` data property. |
| Vue Router | `new VueRouter({ routes })` | Creates a new Vue Router instance with a routes configuration. |
| Vuex | `new Vuex.Store({ state, mutations, actions, getters })` | Creates a new Vuex Store instance with a state, mutations, actions, and getters configuration. |
| Vuex | `store.state.name` | Accesses the state property `name` from the Vuex store. |
| Vuex | `store.commit('mutationName')` | Commits a mutation named `'mutationName'` on the Vuex store. |
| Vuex | `store.dispatch('actionName')` | Dispatches an action named `'actionName'` on the Vuex store. |

This is just a small fraction of the total commands and APIs available in JavaScript and Vue.js, but they're some of the most important ones and will definitely help when starting with these technologies.
