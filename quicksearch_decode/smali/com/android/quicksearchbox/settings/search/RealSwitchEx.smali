.class public final Lcom/android/quicksearchbox/settings/search/RealSwitchEx;
.super Lsmartisan/widget/SwitchEx;
.source "RealSwitchEx.kt"


# instance fields
.field public z0:Lsmartisanos/widget/SwitchEx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/SwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/settings/search/RealSwitchEx;)Lsmartisanos/widget/SwitchEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;->z0:Lsmartisanos/widget/SwitchEx;

    return-object p0
.end method


# virtual methods
.method public final a(Lsmartisanos/widget/SwitchEx;)V
    .locals 1

    const-string v0, "switch"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;->z0:Lsmartisanos/widget/SwitchEx;

    .line 3
    new-instance p1, Lcom/android/quicksearchbox/settings/search/RealSwitchEx$a;

    invoke-direct {p1, p0}, Lcom/android/quicksearchbox/settings/search/RealSwitchEx$a;-><init>(Lcom/android/quicksearchbox/settings/search/RealSwitchEx;)V

    invoke-virtual {p0, p1}, Lsmartisan/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/settings/search/RealSwitchEx;->z0:Lsmartisanos/widget/SwitchEx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsmartisanos/widget/SwitchEx;->toggle()V

    :cond_0
    return-void
.end method
