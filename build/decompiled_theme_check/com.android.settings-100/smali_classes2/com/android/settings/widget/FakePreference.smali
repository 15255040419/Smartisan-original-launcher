.class public Lcom/android/settings/widget/FakePreference;
.super Landroid/preference/Preference;
.source "FakePreference.java"


# instance fields
.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/widget/FakePreference;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/FakePreference;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/widget/FakePreference;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/android/settings/widget/FakePreference;->title:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/widget/FakePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0103

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 42
    new-instance v0, Lcom/android/settings/widget/FakePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/FakePreference$1;-><init>(Lcom/android/settings/widget/FakePreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public update()Lcom/android/settings/widget/FakePreference;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/settings/widget/FakePreference;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/FakePreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method
