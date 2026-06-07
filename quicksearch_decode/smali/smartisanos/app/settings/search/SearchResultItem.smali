.class public Lsmartisanos/app/settings/search/SearchResultItem;
.super Ljava/lang/Object;
.source "SearchResultItem.java"

.implements Ljava/io/Serializable;

.field public mAction:Ljava/lang/String;
.field public mDefValue:Ljava/lang/String;
.field public mIconId:I
.field public mId:I
.field public mIsSwitch:Ljava/lang/String;
.field public mKey:Ljava/lang/String;
.field public mPath1:Ljava/lang/String;
.field public mPath2:Ljava/lang/String;
.field public mSpecialKey:Ljava/lang/String;
.field public mSwitchKey:Ljava/lang/String;
.field public mSwitchTable:Ljava/lang/String;
.field public mTitle:Ljava/lang/String;

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mId:I

    iput-object p2, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mAction:Ljava/lang/String;

    iput-object p3, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mKey:Ljava/lang/String;

    iput-object p5, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mIsSwitch:Ljava/lang/String;

    iput-object p6, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mSwitchTable:Ljava/lang/String;

    iput-object p7, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mSwitchKey:Ljava/lang/String;

    iput-object p8, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mSpecialKey:Ljava/lang/String;

    iput-object p9, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mDefValue:Ljava/lang/String;

    iput p10, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mIconId:I

    iput-object p11, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mPath1:Ljava/lang/String;

    iput-object p12, p0, Lsmartisanos/app/settings/search/SearchResultItem;->mPath2:Ljava/lang/String;

    return-void
.end method
