# 🏥 Hospital Appointment Dashboard  

## 📝 Problem Statement  
Hospitals face challenges with **high appointment cancellations, no-shows, and uneven doctor workload**, leading to lost revenue, inefficiency, and poor patient experience.  
Leadership needs **real-time visibility** into appointments, patients, and doctor utilization to improve operations.  

---

## 💡 Solution  
An **interactive Power BI dashboard** built on appointment, patient, and doctor data to:  
- Track appointment status (**Completed, Cancelled, No-show**).  
- Monitor patient demographics and visit patterns.  
- Analyze doctor workload across departments.  
- Provide management with **KPIs and drilldowns** for decision-making.  

---

## 📌 Key KPIs from Dashboard  
- **Total Appointments**  
- **Completed Appointments %**  
- **No-show Rate %**  
- **Cancellation Rate %** (with reasons like *Sick Child, Double Booking, Emergency*)  
- **First vs Repeat Visits**  
- **Avg. Appointment Duration (mins)**  
- **Department-wise Appointments**  
- **Doctor Utilization %** (Completed vs Available Slots)  
- **Payment Mode Split** (Cash, Insurance, Govt.)  

---

## 🔍 Business Insights  
- **High no-show and cancellation rates** observed in **Neurology, Pediatrics, and Cardiology**.  
- **Top cancellation reasons** include *Sick Child, Did Not Inform, and Double Booking*.  
- **First-time patients** are more likely to cancel than repeat patients.  
- Some doctors/departments show **under-utilization**, while others are overbooked.  
- **Cash payments dominate**, but Insurance and Govt. schemes are critical for certain departments.  
- Patient demographics (age, chronic illness, marital status) correlate with appointment attendance.  

---

## 💼 Business Impact  
- Helps hospital management **reduce cancellations/no-shows** through reminders, stricter booking policies, or tele-consultation.  
- Supports **doctor scheduling optimization**, balancing workload and improving efficiency.  
- Improves **patient care and retention** by identifying which segments face challenges.  
- Enables **revenue protection and forecasting** by tracking payment modes and reducing inefficiencies.  

---

## 🛠️ Tech Stack / Skills Used  
- **Excel** → Data cleaning, column creation (Day, Month, Quarter).  
- **SQL** → Data joins between appointments, patients, and doctors.  
- **Power BI** → Data modeling, DAX measures, KPIs, interactive dashboards.  
- **Business Analysis** → Identifying drivers of no-shows, cancellations, and department bottlenecks.  

---

## 📊 Dashboard Views  

### 1️⃣ Appointment Dashboard  
![Appointment Dashboard](https://github.com/Chiku-Programmer/Hospital-Appointment-Dashboard/blob/main/APPOINTMENT.png?raw=true)
**Insights:**  
- Overall appointment efficiency (completed %, cancelled %, no-shows).  
- Frequent cancellation reasons: *Sick Child, Double Booking, Did Not Inform*.  
- Highest cancellations in **Neurology, Cardiology, Pediatrics**.  
- **First-time patients cancel more** than repeat visits.  
- **Cash payments dominate**, with Insurance & Govt. programs contributing significantly.  

**Takeaway:**  
→ Tighten appointment management, send reminders, reduce double booking, and improve the first-visit experience to build trust.  

---

### 2️⃣ Doctor Dashboard  
![Doctor Dashboard](https://github.com/Chiku-Programmer/Hospital-Appointment-Dashboard/blob/main/DOCTORS.png?raw=true)
**Insights:**  
- Some doctors frequently **on leave**, creating bottlenecks.  
- **Neurology & Cardiology** departments have fewer available slots per day but higher demand.  
- **Active vs On Leave** status helps assess workforce readiness.  
- Utilization rates reveal overbooked vs underutilized doctors.  

**Takeaway:**  
→ Redistribute doctor workload, ensure backup staffing in high-demand areas, and improve shift rotations.  

---

### 3️⃣ Patient Dashboard  
![Patient Dashboard](https://github.com/Chiku-Programmer/Hospital-Appointment-Dashboard/blob/main/PATIENTS.png?raw=true)
**Insights:**  
- Demographics: Age, gender, marital status, and city distribution.  
- Chronic illnesses (diabetes, hypertension, asthma) drive **repeat visits**.  
- **First-time patients cancel more**, chronic illness patients are more reliable.  
- Certain cities/areas contribute disproportionately to patient volume.  

**Takeaway:**  
→ Create retention programs for chronic illness patients, improve onboarding for first-timers, and target high-patient cities for outreach campaigns.  

---

## 🔑 Summary  
Together, these three dashboards provide a **360° view of hospital performance** — helping stakeholders:  
- Reduce wasted capacity.  
- Balance workforce utilization.  
- Improve patient satisfaction and retention.  
- Protect and forecast hospital revenue.  
