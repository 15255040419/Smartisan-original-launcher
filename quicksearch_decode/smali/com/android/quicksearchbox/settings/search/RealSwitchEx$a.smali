.class public final Lcom/android/quicksearchbox/settings/search/RealSwitchEx$a;
.super Ljava/lang/Object;
.source "RealSwitchEx.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/settings/search/RealSwitchEx;->a(Lsmartisanos/widget/SwitchEx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/settings/search/RealSwitchEx;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/settings/search/RealSwitchEx$a;->a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/settings/search/RealSwitchEx$a;->a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    invoke-static {p1}, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;->a(Lcom/android/quicksearchbox/settings/search/RealSwitchEx;)Lsmartisanos/widget/SwitchEx;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsmartisanos/widget/SwitchEx;->isChecked()Z

    move-result p1

    if-eq p1, p2, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/settings/search/RealSwitchEx$a;->a:Lcom/android/quicksearchbox/settings/search/RealSwitchEx;

    invoke-static {p1}, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;->a(Lcom/android/quicksearchbox/settings/search/RealSwitchEx;)Lsmartisanos/widget/SwitchEx;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    :cond_1
    return-void
.end method
