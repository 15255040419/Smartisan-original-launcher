.class public Lcom/android/settings/ApnPreference;
.super Landroidx/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ApnPreference"

.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private mApnReadOnly:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040030

    .line 44
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    const/4 p2, 0x1

    .line 54
    iput-boolean p2, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    .line 55
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mApnReadOnly:Z

    return-void
.end method


# virtual methods
.method public getSelectable()Z
    .locals 0

    .line 133
    iget-boolean p0, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a009a

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    .line 63
    check-cast v0, Landroid/widget/RadioButton;

    .line 64
    iget-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :cond_0
    const/4 v2, 0x1

    .line 73
    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v1, 0x0

    .line 75
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_2
    :goto_0
    const v0, 0x7f0a0946

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 83
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnPreference"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 103
    sget-object p2, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 106
    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    .line 108
    sget-object p1, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 110
    sput-object p0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    .line 111
    sput-object p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_0

    const v0, 0x7f0a0946

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 120
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 122
    iget-boolean p0, p0, Lcom/android/settings/ApnPreference;->mApnReadOnly:Z

    const-string v0, "DISABLE_EDITOR"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setApnReadOnly(Z)V
    .locals 0

    .line 137
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mApnReadOnly:Z

    return-void
.end method

.method public setChecked()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return-void
.end method
