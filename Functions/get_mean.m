function get_mean(object,i)
    object.Subject(i).Angle.Sagittal.Thorax.Summary.Left_mean = mean(object.Subject(i).Angle.Sagittal.Thorax.left,2);
end