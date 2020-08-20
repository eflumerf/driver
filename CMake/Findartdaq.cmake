if(EXISTS $ENV{ARTDAQ_LIB})
 # UPS
  include_directories($ENV{ARTDAQ_INC})
  include_directories($ENV{ARTDAQ_CORE_INC})
  include_directories($ENV{ARTDAQ_UTILITIES_INC})
  include_directories($ENV{FHICLCPP_INC})
  include_directories($ENV{MESSAGEFACILITY_INC})
  find_library(ARTDAQ_DAQDATA NAMES libartdaq_DAQdata.so)
  find_library(ARTDAQ_DAQRATE NAMES libartdaq_DAQrate.so)
  find_library(ARTDAQ_GENERATORS NAMES libartdaq_Generators.so)
  find_library(FHICLCPP NAMES libfhiclcpp.so)
  find_library(MF_MESSAGELOGGER NAMES libMF_MessageLogger.so)
endif()

if(EXISTS $ENV{ARTDAQ_DEMO_HDF5_LIB})
  include_directories($ENV{ARTDAQ_DEMO_HDF5_INC})
  find_library(ARTDAQ_HDF5 NAMES libartdaq-demo-hdf5_HDF5.so)
  find_library(ARTDAQ_HDF5_GROUPED_DATASET NAMES libartdaq-demo-hdf5_HDF5_highFive_highFiveGroupedDataset_dataset.so)
endif()