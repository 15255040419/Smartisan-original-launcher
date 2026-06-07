.class public Lsmartisan/widget/SmartisanTimePicker$c;
.super Ljava/lang/Object;
.source "SmartisanTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$c;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$c;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanTimePicker;->a(Lsmartisan/widget/SmartisanTimePicker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lsmartisan/widget/SmartisanTimePicker;->a(Lsmartisan/widget/SmartisanTimePicker;Z)Z

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$c;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanTimePicker;->b(Lsmartisan/widget/SmartisanTimePicker;)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SmartisanTimePicker$c;->a:Lsmartisan/widget/SmartisanTimePicker;

    invoke-static {p1}, Lsmartisan/widget/SmartisanTimePicker;->c(Lsmartisan/widget/SmartisanTimePicker;)V

    return-void
.end method
