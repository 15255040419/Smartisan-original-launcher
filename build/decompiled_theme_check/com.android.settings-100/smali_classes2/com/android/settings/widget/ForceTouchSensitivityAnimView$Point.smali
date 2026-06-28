.class Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;
.super Ljava/lang/Object;
.source "ForceTouchSensitivityAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ForceTouchSensitivityAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Point"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ForceTouchSensitivityAnimView;FF)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->this$0:Lcom/android/settings/widget/ForceTouchSensitivityAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput p2, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    .line 592
    iput p3, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    return-void
.end method


# virtual methods
.method calculateCoordinate(I)Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;
    .locals 1

    .line 596
    iget v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    .line 597
    iget v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/widget/ForceTouchSensitivityAnimView$Point;->y:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
