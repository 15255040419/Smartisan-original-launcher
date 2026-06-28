.class public Lcom/android/settings/ApnItem;
.super Ljava/lang/Object;
.source "ApnItem.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ApnPreference"


# instance fields
.field private mIsChecked:Z

.field private mKey:Ljava/lang/String;

.field private mReadOnly:Z

.field private mSelectable:Z

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/android/settings/ApnItem;->mSelectable:Z

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/ApnItem;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getReadOnly()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/settings/ApnItem;->mReadOnly:Z

    return p0
.end method

.method public getSelectable()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/settings/ApnItem;->mSelectable:Z

    return p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settings/ApnItem;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/ApnItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/settings/ApnItem;->mIsChecked:Z

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/settings/ApnItem;->mIsChecked:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/settings/ApnItem;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/settings/ApnItem;->mReadOnly:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/android/settings/ApnItem;->mSelectable:Z

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/ApnItem;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/ApnItem;->mTitle:Ljava/lang/String;

    return-void
.end method
