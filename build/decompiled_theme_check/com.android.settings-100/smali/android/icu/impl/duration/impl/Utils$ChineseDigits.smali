.class public Landroid/icu/impl/duration/impl/Utils$ChineseDigits;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseDigits"
.end annotation


# static fields
.field public static final DEBUG:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;


# instance fields
.field final digits:[C

.field final ko:Z

.field final levels:[C

.field final liang:C

.field final units:[C


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 207
    new-instance v6, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    const-string v1, "0123456789s"

    const-string/jumbo v2, "sbq"

    const-string v3, "WYZ"

    const/16 v4, 0x4c

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v6, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->DEBUG:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 210
    new-instance v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    const-string/jumbo v8, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    const-string/jumbo v9, "\u5341\u767e\u5343"

    const-string/jumbo v10, "\u842c\u5104\u5146"

    const/16 v11, 0x5169

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 216
    new-instance v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    const-string/jumbo v2, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    const-string/jumbo v3, "\u5341\u767e\u5343"

    const-string/jumbo v4, "\u4e07\u4ebf\u5146"

    const/16 v5, 0x4e24

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 224
    new-instance v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    const-string/jumbo v8, "\uc601\uc77c\uc774\uc0bc\uc0ac\uc624\uc721\uce60\ud314\uad6c\uc2ed"

    const-string/jumbo v9, "\uc2ed\ubc31\ucc9c"

    const-string/jumbo v10, "\ub9cc\uc5b5?"

    const v11, 0xc774

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    .line 201
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    .line 202
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    .line 203
    iput-char p4, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    .line 204
    iput-boolean p5, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    return-void
.end method
