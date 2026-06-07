.class public Lsmartisan/widget/SmartisanTimePicker$d;
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
    iput-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$d;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lsmartisan/widget/SmartisanNumberPicker;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$d;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanTimePicker;->a(Lsmartisan/widget/SmartisanTimePicker;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lsmartisan/widget/SmartisanTimePicker;->a(Lsmartisan/widget/SmartisanTimePicker;Z)Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$d;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanTimePicker;->b(Lsmartisan/widget/SmartisanTimePicker;)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$d;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanTimePicker;->c(Lsmartisan/widget/SmartisanTimePicker;)V

    return-void
.end method
