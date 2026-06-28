.class public final Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;
.super Ljava/lang/Object;
.source "BmsgTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;
    }
.end annotation


# instance fields
.field private final mMatcher:Ljava/util/regex/Matcher;

.field private final mOffset:I

.field private mPos:I

.field private final mStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mPos:I

    .line 67
    iput-object p1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mStr:Ljava/lang/String;

    .line 68
    iput p2, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mOffset:I

    const-string p2, "(([^:]*):(.*))?\r\n"

    .line 69
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    .line 70
    iget-object p1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->regionStart()I

    move-result p1

    iput p1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mPos:I

    return-void
.end method


# virtual methods
.method public next()Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->next(Z)Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;

    move-result-object p0

    return-object p0
.end method

.method public next(Z)Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 77
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    iget v2, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mPos:I

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 79
    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    invoke-virtual {p0}, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->pos()I

    move-result p0

    const-string v0, "Property or empty line expected"

    invoke-direct {p1, v0, p0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 87
    :cond_2
    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mPos:I

    .line 89
    iget-object v1, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move v0, v2

    :cond_3
    if-eqz v0, :cond_0

    .line 94
    new-instance p1, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;

    iget-object v0, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mMatcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer$Property;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public pos()I
    .locals 1

    .line 106
    iget v0, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mPos:I

    iget p0, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mOffset:I

    add-int/2addr v0, p0

    return v0
.end method

.method public remaining()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mStr:Ljava/lang/String;

    iget p0, p0, Landroid/bluetooth/client/pbap/utils/BmsgTokenizer;->mPos:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
