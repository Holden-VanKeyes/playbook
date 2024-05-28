document.addEventListener('DOMContentLoaded', function () {
  const notificationElement = document.getElementById('performance-data')
  notificationElement.addEventListener('click', handleNotificationClick)
})

function handleNotificationClick() {
  fetch('/revenue_data/update_datum')
    .then((response) => response.json())
    .then((data) => {
      //   const newTicketCount = data.ticket_count
      console.log('DATA HERE', data)
      //   updateData(newTicketCount)
    })
    .catch((error) => {
      console.error('Error fetching data:', error)
    })
}

// function updateTicketCount(count) {
//   const ticketCountElement = document.getElementById('ticket-count')
//   ticketCountElement.textContent = count
// }
