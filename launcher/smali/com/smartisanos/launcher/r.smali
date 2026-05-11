.class Lcom/smartisanos/launcher/r;
.super Ljava/lang/Object;
.source "ActivityProxy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/J;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/J;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/r;->this$0:Lcom/smartisanos/launcher/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 2
    sget v0, Lcom/smartisanos/smengine/Ra;->eV:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move p1, v0

    .line 3
    :cond_0
    sget v0, Lcom/smartisanos/smengine/Ra;->fV:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    move p1, v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/r;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {v0}, Lcom/smartisanos/launcher/J;->c(Lcom/smartisanos/launcher/J;)F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/r;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {v1}, Lcom/smartisanos/launcher/J;->c(Lcom/smartisanos/launcher/J;)F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/Ra;->w(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/r;->this$0:Lcom/smartisanos/launcher/J;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/J;->a(Lcom/smartisanos/launcher/J;F)F

    :cond_2
    return-void
.end method
