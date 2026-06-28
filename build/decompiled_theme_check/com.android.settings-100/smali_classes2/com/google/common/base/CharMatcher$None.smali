.class final Lcom/google/common/base/CharMatcher$None;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "None"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/base/CharMatcher$None;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1289
    new-instance v0, Lcom/google/common/base/CharMatcher$None;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$None;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1292
    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$NamedFastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 0

    .line 1374
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 0

    .line 1348
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1368
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1302
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, -0x1

    return p0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1308
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    .line 1309
    invoke-static {p2, p0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    const/4 p0, -0x1

    return p0
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .locals 0

    .line 1315
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, -0x1

    return p0
.end method

.method public matches(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1321
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1326
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 0

    .line 1385
    invoke-static {}, Lcom/google/common/base/CharMatcher$None;->any()Lcom/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 0

    .line 1287
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher$None;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 0

    .line 1380
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/CharMatcher;

    return-object p0
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 1332
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 0

    .line 1337
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 1342
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 1353
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 1358
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 1363
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
