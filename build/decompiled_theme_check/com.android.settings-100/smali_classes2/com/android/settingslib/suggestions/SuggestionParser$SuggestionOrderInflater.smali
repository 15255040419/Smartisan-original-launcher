.class Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;
.super Ljava/lang/Object;
.source "SuggestionParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/suggestions/SuggestionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionOrderInflater"
.end annotation


# static fields
.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_EXCLUSIVE:Ljava/lang/String; = "exclusive"

.field private static final ATTR_EXCLUSIVE_EXPIRE_DAYS:Ljava/lang/String; = "exclusiveExpireDays"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "multiple"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_ITEM:Ljava/lang/String; = "step"

.field private static final TAG_LIST:Ljava/lang/String; = "optional-steps"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->mContext:Landroid/content/Context;

    return-void
.end method

.method private rParse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 451
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 452
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_2

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 457
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {p0, v1, p3}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    .line 460
    invoke-virtual {p0, p2, v1}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->onAddChildItem(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    invoke-direct {p0, p1, v1, p3}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->rParse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAddChildItem(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 466
    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_0

    instance-of p0, p2, Lcom/android/settingslib/suggestions/SuggestionCategory;

    if-eqz p0, :cond_0

    .line 467
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/settingslib/suggestions/SuggestionCategory;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 469
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parent was not a list"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 4

    const-string p0, "optional-steps"

    .line 474
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 475
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    const-string p0, "step"

    .line 476
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 477
    new-instance p0, Lcom/android/settingslib/suggestions/SuggestionCategory;

    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionCategory;-><init>()V

    const/4 p1, 0x0

    const-string v0, "category"

    .line 478
    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionCategory;->category:Ljava/lang/String;

    const-string v0, "package"

    .line 479
    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionCategory;->pkg:Ljava/lang/String;

    const-string v0, "multiple"

    .line 480
    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/suggestions/SuggestionCategory;->multiple:Z

    const-string v0, "exclusive"

    .line 482
    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusive:Z

    const-string v0, "exclusiveExpireDays"

    .line 485
    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 488
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    goto :goto_2

    :cond_3
    const-wide/16 p1, -0x1

    :goto_2
    const-wide/32 v0, 0x5265c00

    mul-long/2addr p1, v0

    .line 490
    iput-wide p1, p0, Lcom/android/settingslib/suggestions/SuggestionCategory;->exclusiveExpireDaysInMillis:J

    return-object p0

    .line 493
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown item "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parse(I)Ljava/lang/Object;
    .locals 5

    .line 416
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 417
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 422
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    :cond_1
    if-ne v2, v3, :cond_2

    .line 431
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v2

    .line 434
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settingslib/suggestions/SuggestionParser$SuggestionOrderInflater;->rParse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    return-object v2

    .line 426
    :cond_2
    new-instance p0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": No start tag found!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem parser resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuggestionParser"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
