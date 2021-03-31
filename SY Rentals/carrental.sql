-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 26, 2021 at 07:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(3, 11299127674, '19dcs103@charusat.edu.in', 1, '2021-02-10', '2021-02-20', 'What is the pickup point of this car? Please send me a message of the details please. ', 1, '2021-03-06 16:27:06', '2021-03-06 16:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki', '2021-03-09 16:24:34', '2021-03-10 10:53:02'),
(2, 'BMW', '2021-03-09 16:24:34', '2021-03-07 15:25:38'),
(3, 'Audi', '2021-03-09 16:24:34', '2021-03-07 15:25:42'),
(4, 'Nissan', '2021-03-09 16:24:34', '2021-03-07 15:25:48'),
(5, 'Toyota', '2021-03-09 16:24:34', '2021-03-07 15:25:50'),
(7, 'Volkswagon', '2021-03-09 16:24:34', '2021-03-07 15:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Vadodara- 390011', 'syrentals@gmail.com', '9737369010');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'SMIT PATEL', '19dcs103@charusat.edu.in', '9737369010', 'I am satisfied with the services provided by this website.', '2021-03-06 15:47:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																																																																																																																																						<h3 style=\"margin: 10px 0px 0px; padding: 0px; border: 0px; color: rgb(167, 34, 141);\"><p style=\"text-align: center; margin-bottom: 15px; color: rgb(89, 89, 89); font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 24px;\"><span style=\"font-family: arial;\"><br></span></p><div class=\"table-responsive\" style=\"color: rgb(112, 112, 112); font-size: 14px;\"><table class=\"table table-hover table-bordered\" style=\"width: 1160px; border-color: rgba(0, 0, 0, 0.05);\"><thead><tr><th width=\"30%\" style=\"line-height: 1.42857; border-bottom-width: 1px; border-bottom-color: rgba(0, 0, 0, 0.05); border-right-color: rgba(0, 0, 0, 0.05); border-left-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Daily Rental- Terms and Conditions</span></th><th width=\"70%\" style=\"line-height: 1.42857; border-bottom-width: 1px; border-bottom-color: rgba(0, 0, 0, 0.05); border-right-color: rgba(0, 0, 0, 0.05); border-left-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Description</span></th></tr></thead><tbody><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Eligibility Age</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">18 years or above</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Documents</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><table><tbody><tr><td><span style=\"font-weight: 700; font-family: arial;\">Indian National :</span></td></tr><tr><td><span style=\"font-family: arial;\">Driving Licence</span></td></tr><tr><td><span style=\"font-family: arial;\">Latest Electricity Bill. Voter ID card Can be additional and optional</span></td></tr><tr><td><span style=\"font-family: arial;\">Aadhaar Card Number and Copy.</span></td></tr><tr><td><span style=\"font-family: arial;\">Documents should be email from Corporate email ID.</span></td></tr><tr><td><span style=\"font-family: arial;\">Self Employed : should provide GST or PAN of company.</span></td></tr><tr><td><span style=\"font-weight: 700; font-family: arial;\">Foreign National:</span></td></tr><tr><td><span style=\"font-family: arial;\">International Driving Permit (IDP).</span></td></tr><tr><td><span style=\"font-family: arial;\">Passport Copy.</span></td></tr><tr><td><span style=\"font-family: arial;\">Any Resident proof apart from Passport.</span></td></tr><tr><td><span style=\"font-family: arial;\">Credit Card.</span></td></tr><tr><td style=\"padding-top: 40px;\"><span style=\"font-family: arial;\">Credit Card with desired limit of Security Deposit of Rs.5,000 (Rupees Five Thousand Only). If the User does not present the above documents in original at the time of obtaining delivery of the Vehicle, the company shall be entitled to refuse the delivery of the Vehicle and cancel this Agreement in such an event Rs.1000 or the rental amount whichever is less shall be charged to the renter.</span></td></tr><tr><td style=\"padding-top: 40px;\"><span style=\"font-weight: 700; font-family: arial;\">Note: Individuals holding Non India Driving License need to carry IDP [International Driving Permit] at the time of delivery of car. Avis will not hand over the car in case the IDP is not shared with us. No refunds will be made in such a case.</span></td></tr></tbody></table></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Rental Period</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">The said period shall be calculated from the time the User collects the Vehicle and up to the time the User returns the rental vehicle.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Other terms</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">As per terms given below</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Delivery /Collection</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Vehicle must be returned at the same location from where it was delivered to the renter.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Included KMs</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Unlimited</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Fuel</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">The Vehicle will be provided with a full tank of fuel. In case the tank is not full at the time of return of Vehicle, the User will be charged for short fuel on fuel price of the day the car was returned.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">GPS Navigation system/Child Safety Seat</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">GPS Navigation / Child safety seat shall be available on request with additional charges (Subject to availability)</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Threshold time</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">In case of late return, the User will be allowed a leverage of 1 hour for returning the Vehicle after that late return charges shall be applicable as below.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Cancellation</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><div class=\"table-responsive\"><table class=\"table table-hover table-bordered\" style=\"width: 794.4px; border-color: rgba(0, 0, 0, 0.05);\"><thead><tr><th style=\"line-height: 1.42857; border-bottom-width: 1px; border-bottom-color: rgba(0, 0, 0, 0.05); border-right-color: rgba(0, 0, 0, 0.05); border-left-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">S. No.</span></th><th style=\"line-height: 1.42857; border-bottom-width: 1px; border-bottom-color: rgba(0, 0, 0, 0.05); border-right-color: rgba(0, 0, 0, 0.05); border-left-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Cancellation Done</span></th><th style=\"line-height: 1.42857; border-bottom-width: 1px; border-bottom-color: rgba(0, 0, 0, 0.05); border-right-color: rgba(0, 0, 0, 0.05); border-left-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Percentage of deduction on Total Rental amount</span></th></tr></thead><tbody><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">1</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Prior to 48 Hours</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">No Cancellation Charge</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">2</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Within 24-48 hours from rental time</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">3%</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">3</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Within 4 - 24 hours from rental time</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">50%</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">4</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Within 0 - 4 hours from rental time</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">100%</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">5</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">No show</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">100%</span></td></tr></tbody></table></div></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Extra Usage Policy</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">SY Rentals:</span><ul style=\"margin-bottom: 10px;\"><li><span style=\"font-family: arial;\">Guest needs to inform Avis in advance for rental extension. An extension of up to 1 hours is permissible if informed with no extra charges.If the extension exceeds 1 hours, following charges will be applicable for every hour including the extension:<br></span><div class=\"table-responsive\"><table class=\"table table-hover table-bordered\" style=\"width: 754.4px; border-color: rgba(0, 0, 0, 0.05);\"><thead><tr><th style=\"line-height: 1.42857; border-bottom-width: 1px; border-bottom-color: rgba(0, 0, 0, 0.05); border-right-color: rgba(0, 0, 0, 0.05); border-left-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Late Fee (Per Hour)</span></th><th style=\"line-height: 1.42857; border-bottom-width: 1px; border-bottom-color: rgba(0, 0, 0, 0.05); border-right-color: rgba(0, 0, 0, 0.05); border-left-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Car Model</span></th></tr></thead><tbody><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Rs. 300/hr.</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Swift, Figo, i10 Grand, Dzire and Amaze</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Rs. 400/hr.</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Ciaz, Etios, Scorpio, and City</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Rs. 400/hr.</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Duster, Baleno, Brezza, Creta, Eco Sports, Ertiga, Innova, Innova Crysta and Xuv500</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Rs. 1000/hr.</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">BMW 5 SERIES</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Rs. 1250/hr.</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">BMW X5</span></td></tr></tbody></table></div></li></ul><span style=\"font-family: arial;\"><span style=\"font-weight: 700;\">For extension/late return, guests are requested to check with&nbsp;</span><span style=\"font-weight: bold;\">SY Rentals</span>&nbsp;<span style=\"font-weight: 700;\">Customer Care (+91 9737369010/+91 9227525299) or email&nbsp;<a href=\"https://webreservation@avis.co.in/\" target=\"_blank\" style=\"color: rgb(89, 89, 89); outline: 0px;\">(19dcs103@charusat.edu.in/19dcs106@charusat.edu.in)</a>&nbsp;at least 4 hours prior to the drop off time.</span></span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Over Speeding Charges</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Customers are allowed to drive the Vehicle up to a maximum speed of 80 km/hr, beyond which the Vehicle will be considered as over speeding. A penalty of Rs. 200 will be charged on the first instance, followed by a further penalty of Rs. 500 and Rs. 1000 for 2nd instance and 3rd instance respectively making it a total of Rs. 1,700/- after third instance. After the third instance, Booking will stand cancelled and the Company shall get the right to take back the Vehicle and terminate the Agreement.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">SY Rentals Cancellation Policy</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><ul style=\"margin-bottom: 10px;\"><li><span style=\"font-family: arial;\">If booking is cancelled prior to 48 hours from rental start time, no cancellation charges will be applied on booking amount.</span></li><li><span style=\"font-family: arial;\">If booking is cancelled within to 24 - 48 hours from rental start time, 3% processing fee will be charged on booking amount.</span></li><li><span style=\"font-family: arial;\">If booking is cancelled within 4 - 24 hours from rental start time, 50% cancelation charge will be applied on the total booking amount.</span></li><li><span style=\"font-family: arial;\">If booking is cancelled within 0 - 4 hours from rental start time or “NO SHOW”, 100% cancelation charge will be applied on the total booking amount.</span></li></ul></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Damages After Return</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">All charges regarding damage to be taken from the client</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Vehicle Damage</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Damage charges to be paid by User in terms of the Rental Agreement. In case damage cost goes beyond Security Deposit Amount insurance claim may be filed and Repair/depreciation amount (In case of insurance claim) &amp; Parts which are not covered under insurance will be recovered from the User. The assessment of damage made by Company will be final. Insurance claim is subject to Company\'s discretion.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Outstation</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">When traveling out of state, it is always important to step at RTO check post to pay the government applicable tax. Cost/penalties pertaining to such interstate tax, toll or any other govt. levied tax will be borne by the User directly.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Traffic Rule Violation</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Cost for any traffic rule violation during the Rental Period will be borne by the User directly. In cases, where challans is received by the Company via post upon completion of the Agreement, the User authorizes the Company to charge the same on the credit card number of the User as mentioned in this Agreement offline. In the event where the Company has not charged on the credit card number of the User, it shall be entitled to recover the amount from the User in his next booking. The User shall follow all the rules and regulation under applicable laws while driving the Vehicle and otherwise including applicable speed limits.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Speed Limit</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Disclaimer: Taking into the account the safety of passengers, Central Government has issued a circular mandating all commercial vehicles to be fitted with a speed governor (speed limiting device) having a maximum speed limit of 80 Km/Hr.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Cleanliness</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Company does not allow the Vehicle to be used to carry pets, goods or any other object which can annihilate the upholstery/any of the vehicles. In such event, the User will be charged on the actual cost towards repairing/cleaning of interior/exterior of vehicle.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Replacement Car</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Replacement Vehicle shall be provided within a city limits only (Subject to availability of similar segment in the city) in all such cases where in a Vehicle develops mechanical error and restrain the User from its use. In a case, where in Vehicle develops such error outside the city limit, replacement Vehicle will not be provided and amount equivalent to agreed rental will be charged. Company decision related to replacement vehicle will be final.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">CAR UPGRADE POLICY</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">In case the selected car model is unavailable, SY Rentals will try it\'s best to provide an equivalent car model or upgrade the car with no additional charge to the customer. Customer, in this case has the right to accept or reject the new allotted car.<br>a. In case customer does not want the upgraded car, customer has the right to cancel his/her reservation. In such cases, 0% cancellation charge will be applicable.<br>b.&nbsp;<span style=\"font-weight: 700;\">Note:</span>&nbsp;Mileage is independent to car model. Cases where the car is upgraded to the customer, SY Rentals will not be liable to reimburse the difference in the mileage amount to the guest.<br>In case the selected car model is unavailable and a lower segment car is allotted to the customer. The difference in the final base amount will be reimbursed to the customer by SY Rentals.</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Modify Bookings</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Revised bookings cannot be cancelled or refunded &amp; an additional payment of INR 1 has to be paid to confirm the changes after which the previous booking will be annulled.<br>If the revised amount is greater than the previous amount, the additional amount has to be paid firsthand &amp; if the amount is lesser, the due amount will be refunded after the booking period.<br></span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">FASTag</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">All our cars are equipped with FASTag as per Government guidelines. All toll charges deducted through FASTag for your rental will be deducted from the security amount. Any toll falls between SY Rentals hub and Guest pickup/drop location shall be billed and deducted from Guest security amount</span></td></tr><tr><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">Refund Policy</span></td><td style=\"line-height: 1.42857; border-color: rgba(0, 0, 0, 0.05);\"><span style=\"font-family: arial;\">SY Rentals will process your refund within 21 working days as per our cancellation and refund policy.</span></td></tr></tbody></table></div></h3>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '																																																																																																																																																																																														<h5 style=\"margin: 0in; text-align: justify; background: rgb(249, 249, 249);\"></h5><h3 style=\"text-align: justify;\"><span style=\"font-family: arial; font-size: large;\">SY Rentals is a startup based in Vadodara for providing car rental services. We have all the required assets to provide the best Car Rental Services that will make travel convenient and simpler. At SY Rentals, we are backed with a large and luxurious fleet of vehicles to give our clients the experience of luxury and comfort while traveling.<br></span></h3><div><span style=\"font-family: arial; font-size: large;\"><br></span></div><div><span style=\"font-family: arial; font-size: large;\"><img src=\"https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixlib=rb-1.2.1&amp;ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&amp;w=1000&amp;q=80\" alt=\"\" align=\"none\"><br></span></div><div><span style=\"font-family: arial; font-size: large;\"><br></span></div><div><div style=\"text-align: justify;\"><span style=\"font-family: arial; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: arial; font-size: large;\">All these luxury cars are well-maintained and provide the best services. Further, to ensure only the best travel services are rendered to our clients all these luxury cars are regularly checked and serviced.</span></div><div style=\"text-align: justify;\"><span style=\"font-family: arial; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: arial; font-size: large;\">At SY Rentals, we have appointed well-trained drivers and other allied staff who with their vast experience and in-depth domain knowledge deliver the best services possible. Our offered luxury car rental services are available at an affordable rental. Other than this, we have always maintained transparency in our dealing that has rendered the best car rental services. We understand the importance of time and make sure to deliver rental services in a time-bound manner.</span></div></div><h4></h4>\r\n\r\n\r\n\r\n<p><o:p></o:p></p>\r\n\r\n\r\n\r\n<p style=\"margin: 0in; text-align: justify; background: rgb(249, 249, 249);\"><o:p></o:p></p>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																																																																																																																																																				<h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: black; font-weight: bold; font-family: arial; font-size: large;\">Q. How old do I need to be to rent a Car\r\nfrom Avis?</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large; color: inherit;\">A. You\r\ncan rent a car from SY Rentals if you are 18 years or above.</span></h3><div><span style=\"font-weight: bold; font-family: arial; font-size: large;\"><br></span></div><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: black; font-weight: bold; font-family: arial; font-size: large;\">Q.\r\nHow can I reserve a car?</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">A. You\r\ncan make a reservation through&nbsp;SY Rentals Official Website.</span></h3><div><span style=\"font-weight: bold; font-family: arial; font-size: large;\"><br></span></div><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: black; font-weight: bold; font-family: arial; font-size: large;\">Q.&nbsp;Is there an option to rent a car\r\nfor a longer period ?</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">A. A car\r\nthrough SY Rentals can be booked for any number of days.</span></h3><div><span style=\"font-weight: bold; font-family: arial; font-size: large;\"><br></span></div><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: black; font-weight: bold; font-family: arial; font-size: large;\">Q.\r\nDo I need to pick up the car from SY Rentals office?</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">A. All\r\nthe cars are delivered and collected free of cost to the address specified at\r\nthe time of making a booking. Note; cars will not be delivered to any public\r\nplaces like malls, metro station, etc. SY Rentals holds the right to cancel the\r\nbooking in such case.</span></h3><div><span style=\"font-weight: bold; font-family: arial; font-size: large;\"><br></span></div><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: black; font-weight: bold; font-family: arial; font-size: large;\">Q. I need to drop off the car at a\r\ndifferent location, can I do that?</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">A. No.\r\nThe car will be collected by our driver from the place to where it was\r\ndelivered.</span></h3><div><span style=\"font-weight: bold; font-family: arial; font-size: large;\"><br></span></div><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: black; font-weight: bold; font-family: arial; font-size: large;\">Q.\r\nWhat fuel types are available?</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">A. We\r\nhave cars with Diesel, Petrol and CNG.</span></h3><div><span style=\"font-weight: bold; font-family: arial; font-size: large;\"><br></span></div><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: black; font-weight: bold; font-family: arial; font-size: large;\">Q.\r\nWhat is the fuel policy?</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">A. As\r\nper the SY Rentals fuel policy:</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">1. The\r\ncar will be delivered with a full tank and need to be returned in the same\r\nmanner.</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">2. Customer\r\npays for the fuel charges based on the usage.</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">3. If\r\nthe car is returned with less than full tank fuel, SY Rentals will charge for\r\nthe differential fuel.</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">4. The\r\ncustomer can either pay this directly by cash/card at the time of car pick up\r\nby Avis driver or the same will be deducted from the security deposit.</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">5. The\r\nassessment made by the SY Rentals driver on the differential fuel amount will\r\nbe final.</span></h3><div><span style=\"font-weight: bold; font-family: arial; font-size: large;\"><br></span></div><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"color: black; font-weight: bold; font-family: arial; font-size: large;\">Q. In which cities do SY Rentals operate\r\nin?</span></h3><h3 style=\"margin: 15pt 0in 7.5pt; text-align: justify; line-height: normal; break-after: auto; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: arial; font-size: large;\">A. Currently\r\nwe operate in only Ahmedabad and Vadodara.</span></h3>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(6, '19dcs103@charusat.edu.in', '2021-03-06 15:38:59'),
(7, '19dcs106@charusat.edu.in', '2021-03-06 16:10:27'),
(8, '19dcs089@charusat.edu.in', '2021-03-09 16:51:50'),
(9, 'yash@gmail.com', '2021-03-23 13:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(3, 'akshay@gmail.com', 'I had a great experience at SY Rentals. Found the exact car I wanted in tip-top shape at a fair price with excellent customer service and attention-to-detail.', '2021-03-25 06:41:47', 1),
(4, 'pushti@gmail.com', 'Smooth transaction and very helpful staff made my first car renting experience easy.  SY Rentals have given me their full attention to all my car needs. Thanks again for the great help!', '2021-03-25 06:44:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'SMIT PATEL', '19dcs103@charusat.edu.in', 'ea15901791756d3a93151c2a0402ce8d', '9737369010', '30/09/2001', NULL, '', '', '2021-03-06 15:37:36', NULL),
(6, 'Yash Patel', '19dcs106@charusat.edu.in', '16637417aa984dfa9aacc8987400eac0', '9227525299', NULL, NULL, NULL, NULL, '2021-03-09 20:14:06', '2021-03-25 12:35:58'),
(8, 'Yash Patel', 'yashpatel@gmail.com', 'ba6562f29d5e6f42cfbf557aa08eb687', '9227525299', NULL, NULL, NULL, NULL, '2021-03-25 06:05:08', NULL),
(9, 'Akshay Shah', 'akshay@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9281918291', NULL, NULL, NULL, NULL, '2021-03-25 06:38:21', '2021-03-25 12:39:07'),
(10, 'Pushti Patel', 'pushti@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9293129129', NULL, NULL, NULL, NULL, '2021-03-25 06:43:36', '2021-03-25 12:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 500, 'Petrol', 2020, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-03-06 07:04:35', '2021-03-06 23:05:36'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 1000, 'Petrol', 2020, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2021-03-06 07:04:35', '2021-03-06 23:05:41'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2020, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-03-06 07:05:04', '2021-03-06 23:05:48'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 800, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, 1, '2021-03-06 07:07:08', '2021-03-06 23:02:40'),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2020, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-03-06 07:10:09', '2021-03-06 23:05:57'),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 400, 'CNG', 2020, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-03-06 07:15:21', '2021-03-06 23:05:44'),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2020, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 1, 1, 1, '2021-03-06 07:20:55', '2021-03-06 23:04:56'),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 600, 'Petrol', 2020, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2021-03-06 07:25:32', '2021-03-06 23:06:00'),
(9, 'Baleno', 1, 'Maruti Suzuki Baleno gets a mid-life update with fresh set of cosmetic and added features inside the cabin. The vehicle is available in four trims – Sigma, Delta, Zeta and Alpha. The vehicle is available in petrol and diesel engine options. The vehicle is available in six colour options – pearl artic white, premium silver, nexa blue, autumn orange, phoenix red and magma grey.\r\nThe Baleno hatchback now features a revised bumper which sports a wider centre air-dam and air ducts on either side which are surrounded by the C-shaped profile. The new grille features a three-dimensional detailing and has been slightly tweaked to make the face look wider. The vehicle now gets precision cut two tone 16-inch alloy wheels.', 100, 'Petrol', 2020, 5, 'baleno590x352.png', 'Interior1.jpg', '2018-Maruti-Baleno-Interior-Photo-3.jpg', '122.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2021-03-10 10:59:03', '2021-03-25 12:29:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
