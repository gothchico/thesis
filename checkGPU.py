import torch
print(torch.cuda.is_available())
print(torch.cuda.device_count())
if torch.backends.mps.is_available():
   mps_device = torch.device("mps")
   x = torch.ones(1, device=mps_device)
   print (x)
   print(mps_device)
   print(torch.mps.device_count())
else:
   print ("MPS device not found.")