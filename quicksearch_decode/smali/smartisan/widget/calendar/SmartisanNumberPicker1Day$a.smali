.class public Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$a;
.super Ljava/lang/Object;
.source "SmartisanNumberPicker1Day.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->f()Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->f()Landroid/media/SoundPool;

    move-result-object v1

    invoke-static {}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->g()I

    move-result v2

    const v3, 0x3dc18937    # 0.0945f

    const v4, 0x3dc18937    # 0.0945f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method
