.class public Lsmartisan/widget/SmartisanTimePicker$a;
.super Ljava/lang/Object;
.source "SmartisanTimePicker.java"

# interfaces
.implements Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsmartisan/widget/SmartisanTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lsmartisan/widget/SmartisanTimePicker;


# direct methods
.method public constructor <init>(Lsmartisan/widget/SmartisanTimePicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$a;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lsmartisan/widget/SmartisanNumberPicker;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$a;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-virtual {p1}, Lsmartisan/widget/SmartisanTimePicker;->a()Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0xc

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    if-eq p3, p1, :cond_1

    :cond_0
    if-ne p2, p1, :cond_2

    if-ne p3, v0, :cond_2

    .line 2
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$a;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanTimePicker;->a(Lsmartisan/widget/SmartisanTimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lsmartisan/widget/SmartisanTimePicker;->a(Lsmartisan/widget/SmartisanTimePicker;Z)Z

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$a;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanTimePicker;->b(Lsmartisan/widget/SmartisanTimePicker;)V

    .line 4
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$a;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanTimePicker;->c(Lsmartisan/widget/SmartisanTimePicker;)V

    return-void
.end method
