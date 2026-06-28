.class public Lcom/android/settings/AppListSwitchPreference;
.super Lcom/android/settings/AppListPreference;
.source "AppListSwitchPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppListSwitchPref"


# instance fields
.field private mSwitch:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f130009

    .line 21
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    .line 27
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Checkable;

    iput-object p1, p0, Lcom/android/settings/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    .line 28
    iget-object p1, p0, Lcom/android/settings/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/settings/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/settings/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/settings/AppListSwitchPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/settings/AppListSwitchPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_2
    invoke-super {p0}, Lcom/android/settings/AppListPreference;->onClick()V

    goto :goto_1

    .line 39
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to show dialog with zero entries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/AppListSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppListSwitchPref"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/android/settings/AppListSwitchPreference;->mSwitch:Landroid/widget/Checkable;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 55
    :goto_0
    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    return-void
.end method
