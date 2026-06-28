.class public final Landroid/icu/text/MessagePattern;
.super Ljava/lang/Object;
.source "MessagePattern.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePattern$ArgType;,
        Landroid/icu/text/MessagePattern$Part;,
        Landroid/icu/text/MessagePattern$ApostropheMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable<",
        "Landroid/icu/text/MessagePattern;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ARG_NAME_NOT_NUMBER:I = -0x1

.field public static final ARG_NAME_NOT_VALID:I = -0x2

.field private static final MAX_PREFIX_LENGTH:I = 0x18

.field public static final NO_NUMERIC_VALUE:D = -1.23456789E8

.field private static final argTypes:[Landroid/icu/text/MessagePattern$ArgType;

.field private static final defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;


# instance fields
.field private aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

.field private volatile frozen:Z

.field private hasArgNames:Z

.field private hasArgNumbers:Z

.field private msg:Ljava/lang/String;

.field private needsAutoQuoting:Z

.field private numericValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/text/MessagePattern$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.icu.text.MessagePattern.ApostropheMode"

    const-string v1, "DOUBLE_OPTIONAL"

    .line 1545
    invoke-static {v0, v1}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1544
    invoke-static {v0}, Landroid/icu/text/MessagePattern$ApostropheMode;->valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 1547
    invoke-static {}, Landroid/icu/text/MessagePattern$ArgType;->values()[Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/MessagePattern;->argTypes:[Landroid/icu/text/MessagePattern$ArgType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 143
    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 151
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 164
    sget-object v0, Landroid/icu/text/MessagePattern;->defaultAposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 165
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    return-void
.end method

.method static synthetic access$500()[Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    .line 82
    sget-object v0, Landroid/icu/text/MessagePattern;->argTypes:[Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method private addArgDoublePart(DII)V
    .locals 2

    .line 1480
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    const/4 v0, 0x0

    goto :goto_0

    .line 1484
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_1

    .line 1489
    :goto_0
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    sget-object p1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p1, p3, p4, v0}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return-void

    .line 1486
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Too many numeric values"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V
    .locals 1

    .line 1474
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/MessagePattern$Part;

    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroid/icu/text/MessagePattern$Part;->access$402(Landroid/icu/text/MessagePattern$Part;I)I

    .line 1475
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return-void
.end method

.method private addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V
    .locals 7

    .line 1470
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    new-instance v6, Landroid/icu/text/MessagePattern$Part;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessagePattern$Part;-><init>(Landroid/icu/text/MessagePattern$Part$Type;IIILandroid/icu/text/MessagePattern$1;)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 4

    const/4 v0, -0x1

    :goto_0
    move v1, v0

    :goto_1
    const/16 v2, 0x27

    .line 1359
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_2

    if-lt v3, p2, :cond_0

    goto :goto_2

    :cond_0
    if-ne v3, v1, :cond_1

    .line 1366
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1371
    :cond_1
    invoke-virtual {p3, p0, p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move p1, v3

    move v1, p1

    goto :goto_1

    .line 1361
    :cond_2
    :goto_2
    invoke-virtual {p3, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method private inMessageFormatPattern(I)Z
    .locals 1

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 1455
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {p0}, Landroid/icu/text/MessagePattern$Part;->access$200(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object p0

    sget-object p1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private inTopLevelChoiceMessage(ILandroid/icu/text/MessagePattern$ArgType;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1463
    sget-object p1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 1466
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {p0}, Landroid/icu/text/MessagePattern$Part;->access$200(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object p0

    sget-object p1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq p0, p1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private static isArgTypeChar(I)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isChoice(I)Z
    .locals 4

    .line 1407
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1408
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x43

    const/16 v2, 0x63

    if-eq p1, v2, :cond_0

    if-ne p1, v0, :cond_5

    :cond_0
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 1409
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x68

    if-eq p1, v1, :cond_1

    const/16 v1, 0x48

    if-ne p1, v1, :cond_5

    :cond_1
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    .line 1410
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x6f

    if-eq p1, v3, :cond_2

    const/16 v3, 0x4f

    if-ne p1, v3, :cond_5

    :cond_2
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    .line 1411
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x69

    if-eq p1, v1, :cond_3

    const/16 v1, 0x49

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    .line 1412
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_4

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1413
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x65

    if-eq p0, p1, :cond_6

    const/16 p1, 0x45

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isOrdinal(I)Z
    .locals 2

    .line 1440
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1441
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p1, v0, :cond_6

    :cond_0
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1442
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x72

    if-eq p1, v1, :cond_1

    const/16 v1, 0x52

    if-ne p1, v1, :cond_6

    :cond_1
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .line 1443
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x44

    if-ne p1, v0, :cond_6

    :cond_2
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1444
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x69

    if-eq p1, v1, :cond_3

    const/16 v1, 0x49

    if-ne p1, v1, :cond_6

    :cond_3
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .line 1445
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x6e

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4e

    if-ne p1, v0, :cond_6

    :cond_4
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1446
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x61

    if-eq p1, v1, :cond_5

    const/16 v1, 0x41

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1447
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x6c

    if-eq p0, p1, :cond_7

    const/16 p1, 0x4c

    if-ne p0, p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isPlural(I)Z
    .locals 4

    .line 1418
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1419
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-ne p1, v0, :cond_5

    :cond_0
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1420
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x4c

    const/16 v2, 0x6c

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_5

    :cond_1
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    .line 1421
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x75

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-ne p1, v0, :cond_5

    :cond_2
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    .line 1422
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v3, 0x72

    if-eq p1, v3, :cond_3

    const/16 v3, 0x52

    if-ne p1, v3, :cond_5

    :cond_3
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    .line 1423
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x61

    if-eq p1, v0, :cond_4

    const/16 v0, 0x41

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1424
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v2, :cond_6

    if-ne p0, v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSelect(I)Z
    .locals 4

    .line 1429
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1430
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    const/16 v0, 0x53

    if-ne p1, v0, :cond_5

    :cond_0
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .line 1431
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x45

    const/16 v2, 0x65

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_5

    :cond_1
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    .line 1432
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4c

    if-ne p1, v0, :cond_5

    :cond_2
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v3, 0x1

    .line 1433
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .line 1434
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x63

    if-eq p1, v0, :cond_4

    const/16 v0, 0x43

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1435
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x74

    if-eq p0, p1, :cond_6

    const/16 p1, 0x54

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private parseArg(III)I
    .locals 11

    .line 949
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 950
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    .line 951
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v3

    invoke-direct {p0, v1, p1, p2, v3}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    add-int/2addr p1, p2

    .line 952
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p1

    .line 953
    iget-object p2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const-string v1, "Unmatched \'{\' braces in message "

    if-eq p1, p2, :cond_15

    .line 958
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result p2

    .line 959
    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessagePattern;->parseArgNumber(II)I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Bad argument syntax: "

    const v6, 0xffff

    const/4 v7, 0x1

    if-ltz v3, :cond_1

    sub-int v8, p2, p1

    if-gt v8, v6, :cond_0

    const/16 v9, 0x7fff

    if-gt v3, v9, :cond_0

    .line 966
    iput-boolean v7, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    .line 967
    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v9, p1, v8, v3}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_0

    .line 963
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument number too large: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v8, -0x1

    if-ne v3, v8, :cond_14

    sub-int v3, p2, p1

    if-gt v3, v6, :cond_13

    .line 974
    iput-boolean v7, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    .line 975
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v8, p1, v3, v4}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 979
    :goto_0
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p2

    .line 980
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq p2, v3, :cond_12

    .line 984
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x7d

    if-ne v3, v8, :cond_2

    move p1, p2

    goto/16 :goto_3

    :cond_2
    const/16 v0, 0x2c

    if-ne v3, v0, :cond_11

    add-int/lit8 p2, p2, 0x1

    .line 991
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result p2

    move v3, p2

    .line 992
    :goto_1
    iget-object v9, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_3

    iget-object v9, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/icu/text/MessagePattern;->isArgTypeChar(I)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sub-int v9, v3, p2

    .line 996
    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v3

    .line 997
    iget-object v10, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v3, v10, :cond_10

    if-eqz v9, :cond_f

    .line 1001
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_4

    if-ne v1, v8, :cond_f

    :cond_4
    if-gt v9, v6, :cond_e

    .line 1008
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v5, 0x6

    if-ne v9, v5, :cond_7

    .line 1011
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->isChoice(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1012
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    goto :goto_2

    .line 1013
    :cond_5
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->isPlural(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1014
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    goto :goto_2

    .line 1015
    :cond_6
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1016
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    goto :goto_2

    :cond_7
    const/16 v5, 0xd

    if-ne v9, v5, :cond_8

    .line 1019
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->isSelect(I)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v5, p2, 0x6

    invoke-direct {p0, v5}, Landroid/icu/text/MessagePattern;->isOrdinal(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1020
    sget-object v0, Landroid/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Landroid/icu/text/MessagePattern$ArgType;

    .line 1024
    :cond_8
    :goto_2
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/MessagePattern$Part;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v6

    int-to-short v6, v6

    invoke-static {v5, v6}, Landroid/icu/text/MessagePattern$Part;->access$102(Landroid/icu/text/MessagePattern$Part;S)S

    .line 1025
    sget-object v5, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v0, v5, :cond_9

    .line 1026
    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v5, p2, v9, v4}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    :cond_9
    if-ne v1, v8, :cond_b

    .line 1030
    sget-object p2, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v0, p2, :cond_a

    move p1, v3

    goto :goto_3

    .line 1031
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No style field for complex argument: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 1036
    sget-object p1, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v0, p1, :cond_c

    .line 1037
    invoke-direct {p0, v3}, Landroid/icu/text/MessagePattern;->parseSimpleStyle(I)I

    move-result p1

    goto :goto_3

    .line 1038
    :cond_c
    sget-object p1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v0, p1, :cond_d

    .line 1039
    invoke-direct {p0, v3, p3}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    move-result p1

    goto :goto_3

    .line 1041
    :cond_d
    invoke-direct {p0, v0, v3, p3}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    move-result p1

    .line 1046
    :goto_3
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v6

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    add-int/2addr p1, v7

    return p1

    .line 1005
    :cond_e
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument type name too long: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1002
    :cond_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 998
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 988
    :cond_11
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 981
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 971
    :cond_13
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument name too long: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 977
    :cond_14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 954
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseArgNumber(II)I
    .locals 0

    .line 1289
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Landroid/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method private static parseArgNumber(Ljava/lang/CharSequence;II)I
    .locals 9

    const/4 v0, -0x2

    if-lt p1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 1255
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v2, 0x39

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/16 v5, 0x30

    const/4 v6, 0x1

    if-ne p1, v5, :cond_2

    if-ne v1, p2, :cond_1

    return v4

    :cond_1
    move p1, v4

    move v4, v6

    goto :goto_0

    :cond_2
    const/16 v7, 0x31

    if-gt v7, p1, :cond_7

    if-gt p1, v2, :cond_7

    sub-int/2addr p1, v5

    :goto_0
    if-ge v1, p2, :cond_5

    add-int/lit8 v7, v1, 0x1

    .line 1270
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-gt v5, v1, :cond_4

    if-gt v1, v2, :cond_4

    const v8, 0xccccccc

    if-lt p1, v8, :cond_3

    move v4, v6

    :cond_3
    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr p1, v1

    move v1, v7

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    if-eqz v4, :cond_6

    return v0

    :cond_6
    return p1

    :cond_7
    return v3
.end method

.method private parseChoiceStyle(II)I
    .locals 6

    .line 1088
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    .line 1089
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_8

    .line 1097
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    move-result v1

    sub-int v3, v1, v0

    const-string v4, "Bad choice pattern syntax: "

    if-eqz v3, :cond_7

    const v5, 0xffff

    if-gt v3, v5, :cond_6

    const/4 v3, 0x1

    .line 1106
    invoke-direct {p0, v0, v1, v3}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    .line 1108
    invoke-direct {p0, v1}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    .line 1109
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 1112
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x23

    if-eq v1, v5, :cond_1

    const/16 v5, 0x3c

    if-eq v1, v5, :cond_1

    const/16 v5, 0x2264

    if-ne v1, v5, :cond_0

    goto :goto_1

    .line 1114
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected choice separator (#<\u2264) instead of \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' in choice pattern "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1118
    :cond_1
    :goto_1
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v0, v3, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, 0x1

    .line 1120
    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, v0, v5, v1, v3}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    move-result v0

    .line 1122
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    return v0

    .line 1125
    :cond_2
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_4

    .line 1126
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result p2

    if-eqz p2, :cond_3

    return v0

    .line 1127
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1132
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    goto/16 :goto_0

    .line 1110
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1103
    :cond_6
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Choice number too long: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    invoke-direct {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1100
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1090
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing choice argument pattern in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseDouble(IIZ)V
    .locals 5

    .line 1306
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    if-eq v1, p2, :cond_3

    .line 1312
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v2, 0x2b

    if-ne v0, v2, :cond_1

    if-eq v1, p2, :cond_3

    .line 1317
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v1, v3

    :goto_1
    const/16 v4, 0x221e

    if-ne v0, v4, :cond_4

    if-eqz p3, :cond_3

    if-ne v2, p2, :cond_3

    if-eqz v1, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_2

    :cond_2
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_2
    sub-int/2addr p2, p1

    .line 1321
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    return-void

    .line 1346
    :cond_3
    new-instance p3, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad syntax for numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1347
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_4
    :goto_3
    const/16 p3, 0x30

    if-gt p3, v0, :cond_8

    const/16 p3, 0x39

    if-gt v0, p3, :cond_8

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v3, v0

    add-int/lit16 p3, v1, 0x7fff

    if-le v3, p3, :cond_5

    goto :goto_4

    :cond_5
    if-ne v2, p2, :cond_7

    .line 1336
    sget-object p3, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    sub-int/2addr p2, p1

    if-eqz v1, :cond_6

    neg-int v3, v3

    :cond_6
    invoke-direct {p0, p3, p1, p2, v3}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return-void

    .line 1339
    :cond_7
    iget-object p3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    move v2, v0

    move v0, p3

    goto :goto_3

    .line 1342
    :cond_8
    :goto_4
    iget-object p3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    sub-int/2addr p2, p1

    .line 1343
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/icu/text/MessagePattern;->addArgDoublePart(DII)V

    return-void
.end method

.method private parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I
    .locals 10

    const/16 v0, 0x7fff

    if-gt p3, v0, :cond_12

    .line 866
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 867
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    add-int/2addr p1, p2

    .line 869
    :goto_0
    iget-object p2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p1, p2, :cond_f

    .line 870
    iget-object p2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x7c

    const/16 v1, 0x23

    const/16 v3, 0x7b

    const/16 v4, 0x7d

    const/16 v5, 0x27

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne p1, v5, :cond_7

    .line 872
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 875
    sget-object p1, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p1, v0, v6, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 876
    iput-boolean v7, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    goto/16 :goto_4

    .line 878
    :cond_0
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v5, :cond_1

    .line 881
    sget-object p1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p2, v0, 0x1

    invoke-direct {p0, p1, v0, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    move p1, p2

    goto :goto_0

    .line 882
    :cond_1
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    sget-object v9, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    if-eq v8, v9, :cond_4

    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_4

    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p4, v3, :cond_2

    if-eq p1, p2, :cond_4

    .line 886
    :cond_2
    invoke-virtual {p4}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result p2

    if-eqz p2, :cond_3

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 915
    :cond_3
    sget-object p1, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p1, v0, v6, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 916
    iput-boolean v7, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    goto/16 :goto_4

    .line 889
    :cond_4
    :goto_1
    sget-object p1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p2, v0, -0x1

    invoke-direct {p0, p1, p2, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 892
    :goto_2
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/2addr v0, v7

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-ltz p1, :cond_6

    add-int/lit8 v0, p1, 0x1

    .line 894
    iget-object p2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v0, p2, :cond_5

    iget-object p2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-ne p2, v5, :cond_5

    .line 897
    sget-object p1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p1, v0, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_2

    .line 900
    :cond_5
    sget-object p2, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p2, p1, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_4

    .line 905
    :cond_6
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 907
    sget-object p2, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, p2, p1, v6, v5}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 908
    iput-boolean v7, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    goto/16 :goto_0

    .line 919
    :cond_7
    invoke-virtual {p4}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v5

    if-eqz v5, :cond_8

    if-ne p1, v1, :cond_8

    .line 922
    sget-object p1, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p2, v0, -0x1

    invoke-direct {p0, p1, p2, v7, v6}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_4

    :cond_8
    if-ne p1, v3, :cond_9

    add-int/lit8 v0, v0, -0x1

    .line 924
    invoke-direct {p0, v0, v7, p3}, Landroid/icu/text/MessagePattern;->parseArg(III)I

    move-result p1

    goto/16 :goto_0

    :cond_9
    if-lez p3, :cond_a

    if-eq p1, v4, :cond_b

    .line 925
    :cond_a
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p4, v1, :cond_e

    if-ne p1, p2, :cond_e

    .line 929
    :cond_b
    sget-object p2, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p4, p2, :cond_c

    if-ne p1, v4, :cond_c

    move v5, v6

    goto :goto_3

    :cond_c
    move v5, v7

    .line 930
    :goto_3
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    add-int/lit8 p1, v0, -0x1

    move-object v1, p0

    move v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    .line 931
    sget-object p0, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne p4, p0, :cond_d

    return p1

    :cond_d
    return v0

    :cond_e
    :goto_4
    move p1, v0

    goto/16 :goto_0

    :cond_f
    if-lez p3, :cond_11

    .line 940
    invoke-direct {p0, p3, p4}, Landroid/icu/text/MessagePattern;->inTopLevelChoiceMessage(ILandroid/icu/text/MessagePattern$ArgType;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_5

    .line 941
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unmatched \'{\' braces in message "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 944
    :cond_11
    :goto_5
    sget-object v3, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/MessagePattern;->addLimitPart(ILandroid/icu/text/MessagePattern$Part$Type;III)V

    return p1

    .line 864
    :cond_12
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method private parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, p2

    move v4, v0

    move v3, v1

    .line 1144
    :goto_0
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v2

    .line 1145
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_0

    move v5, v0

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    const-string v6, " pattern syntax: "

    const-string v7, "Bad "

    if-nez v5, :cond_d

    .line 1146
    iget-object v8, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_1

    goto/16 :goto_4

    .line 1162
    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v5

    const-string v8, "Argument selector too long: "

    const v9, 0xffff

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x3d

    if-ne v5, v10, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 1164
    invoke-direct {p0, v4}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    move-result v5

    sub-int v10, v5, v2

    if-eq v10, v0, :cond_3

    if-gt v10, v9, :cond_2

    .line 1176
    sget-object v6, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v6, v2, v10, v1}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1177
    invoke-direct {p0, v4, v5, v1}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    goto/16 :goto_2

    .line 1173
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1167
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1179
    :cond_4
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result v5

    sub-int v10, v5, v2

    if-eqz v10, :cond_c

    .line 1188
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x6

    if-ne v10, v6, :cond_8

    iget-object v6, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 v7, 0x7

    const-string v11, "offset:"

    .line 1189
    invoke-virtual {v6, v2, v11, v1, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_7

    add-int/lit8 v5, v5, 0x1

    .line 1198
    invoke-direct {p0, v5}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v2

    .line 1199
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->skipDouble(I)I

    move-result v4

    if-eq v4, v2, :cond_6

    sub-int v5, v4, v2

    if-gt v5, v9, :cond_5

    .line 1208
    invoke-direct {p0, v2, v4, v1}, Landroid/icu/text/MessagePattern;->parseDouble(IIZ)V

    move v2, v4

    goto/16 :goto_3

    .line 1205
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Plural offset value too long: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1201
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing value for plural \'offset:\' "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1193
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Plural argument \'offset:\' (if present) must precede key-message pairs: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-gt v10, v9, :cond_b

    .line 1217
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v4, v2, v10, v1}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    .line 1218
    iget-object v4, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const-string/jumbo v6, "other"

    invoke-virtual {v4, v2, v6, v1, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_9

    move v3, v0

    .line 1225
    :cond_9
    :goto_2
    invoke-direct {p0, v5}, Landroid/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v4

    .line 1226
    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_a

    iget-object v5, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_a

    add-int/lit8 v2, p3, 0x1

    .line 1232
    invoke-direct {p0, v4, v0, v2, p1}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    move-result v2

    :goto_3
    move v4, v1

    goto/16 :goto_0

    .line 1227
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No message fragment after "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " selector: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1214
    :cond_b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    invoke-direct {p0, v2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1182
    :cond_c
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1147
    :cond_d
    :goto_4
    invoke-direct {p0, p3}, Landroid/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result p3

    if-eq v5, p3, :cond_f

    if-eqz v3, :cond_e

    return v2

    .line 1154
    :cond_e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing \'other\' keyword in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " pattern in "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1148
    :cond_f
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {p1}, Landroid/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-direct {p0, p2}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private parseSimpleStyle(I)I
    .locals 5

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    .line 1053
    :goto_0
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 1054
    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x27

    if-ne v1, v3, :cond_1

    .line 1058
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1060
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quoted literal argument style text reaches to the end of the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v3, 0x7b

    if-ne v1, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x7d

    if-ne v1, v3, :cond_5

    if-lez v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    sub-int v1, v4, p1

    const v2, 0xffff

    if-gt v1, v2, :cond_4

    .line 1077
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v2, p1, v1, v0}, Landroid/icu/text/MessagePattern;->addPart(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return v4

    .line 1074
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument style text too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    move v1, v4

    goto :goto_0

    .line 1082
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmatched \'{\' braces in message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private postParse()V
    .locals 0

    return-void
.end method

.method private preParse(Ljava/lang/String;)V
    .locals 2

    .line 845
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 p1, 0x0

    .line 850
    iput-boolean p1, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean p1, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    .line 851
    iput-boolean p1, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    .line 852
    iget-object p1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 853
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 854
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    .line 846
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to parse("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") on frozen MessagePattern instance."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private prefix()Ljava/lang/String;
    .locals 1

    .line 1531
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prefix(I)Ljava/lang/String;
    .locals 0

    .line 1527
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1523
    invoke-static {p0, v0}, Landroid/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static prefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "\""

    if-nez p1, :cond_0

    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "[at pattern index "

    .line 1506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    const/16 v3, 0x18

    if-gt v2, v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 1510
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, p1, 0x18

    add-int/lit8 v2, v2, -0x4

    add-int/lit8 v3, v2, -0x1

    .line 1513
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 1517
    :cond_3
    invoke-virtual {v0, p0, p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const-string p0, " ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private skipDouble(I)I
    .locals 2

    .line 1390
    :goto_0
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1391
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    const-string v1, "+-."

    .line 1393
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    :cond_0
    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x221e

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method private skipIdentifier(I)I
    .locals 0

    .line 1382
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/icu/impl/PatternProps;->skipIdentifier(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method private skipWhiteSpace(I)I
    .locals 0

    .line 1378
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method public static validateArgumentName(Ljava/lang/String;)I
    .locals 2

    .line 346
    invoke-static {p0}, Landroid/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public autoQuoteApostropheDeep()Ljava/lang/String;
    .locals 5

    .line 376
    iget-boolean v0, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    if-nez v0, :cond_0

    .line 377
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 381
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v1

    :cond_1
    :goto_0
    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 384
    invoke-virtual {p0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_1

    if-nez v0, :cond_2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_2
    invoke-static {v2}, Landroid/icu/text/MessagePattern$Part;->access$000(Landroid/icu/text/MessagePattern$Part;)I

    move-result v3

    invoke-static {v2}, Landroid/icu/text/MessagePattern$Part;->access$100(Landroid/icu/text/MessagePattern$Part;)S

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 392
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object p0

    .line 394
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public clear()V
    .locals 1

    .line 238
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    .line 244
    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->needsAutoQuoting:Z

    .line 245
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 247
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    .line 239
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to clear() a frozen MessagePattern instance."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearPatternAndSetApostropheMode(Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 0

    .line 257
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->clear()V

    .line 258
    iput-object p1, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 797
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 800
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->cloneAsThawed()Landroid/icu/text/MessagePattern;

    move-result-object p0

    return-object p0
.end method

.method public cloneAsThawed()Landroid/icu/text/MessagePattern;
    .locals 2

    .line 813
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    iget-object v1, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 818
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 819
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    iput-object p0, v0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    :cond_0
    const/4 p0, 0x0

    .line 821
    iput-boolean p0, v0, Landroid/icu/text/MessagePattern;->frozen:Z

    return-object v0

    :catch_0
    move-exception p0

    .line 815
    new-instance v0, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v0, p0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->cloneAsThawed()Landroid/icu/text/MessagePattern;

    move-result-object p0

    return-object p0
.end method

.method public countParts()I
    .locals 0

    .line 404
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 273
    :cond_1
    check-cast p1, Landroid/icu/text/MessagePattern;

    .line 274
    iget-object v2, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    iget-object v3, p1, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    .line 275
    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern$ApostropheMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public freeze()Landroid/icu/text/MessagePattern;
    .locals 1

    const/4 v0, 0x1

    .line 831
    iput-boolean v0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->freeze()Landroid/icu/text/MessagePattern;

    move-result-object p0

    return-object p0
.end method

.method public getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 0

    .line 293
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    return-object p0
.end method

.method public getLimitPartIndex(I)I
    .locals 0

    .line 507
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {p0}, Landroid/icu/text/MessagePattern$Part;->access$400(Landroid/icu/text/MessagePattern$Part;)I

    move-result p0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public getNumericValue(Landroid/icu/text/MessagePattern$Part;)D
    .locals 2

    .line 466
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->access$200(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 467
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    .line 468
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->access$100(Landroid/icu/text/MessagePattern$Part;)S

    move-result p0

    int-to-double p0, p0

    return-wide p0

    .line 469
    :cond_0
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    .line 470
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->access$100(Landroid/icu/text/MessagePattern$Part;)S

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide p0, -0x3e6290cbac000000L    # -1.23456789E8

    return-wide p0
.end method

.method public getPart(I)Landroid/icu/text/MessagePattern$Part;
    .locals 0

    .line 414
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/MessagePattern$Part;

    return-object p0
.end method

.method public getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;
    .locals 0

    .line 425
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {p0}, Landroid/icu/text/MessagePattern$Part;->access$200(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object p0

    return-object p0
.end method

.method public getPatternIndex(I)I
    .locals 0

    .line 436
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/MessagePattern$Part;

    invoke-static {p0}, Landroid/icu/text/MessagePattern$Part;->access$000(Landroid/icu/text/MessagePattern$Part;)I

    move-result p0

    return p0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 0

    .line 308
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public getPluralOffset(I)D
    .locals 1

    .line 490
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/MessagePattern$Part;

    .line 491
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->access$200(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;
    .locals 1

    .line 446
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->access$000(Landroid/icu/text/MessagePattern$Part;)I

    move-result v0

    .line 447
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->access$300(Landroid/icu/text/MessagePattern$Part;)C

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasNamedArguments()Z
    .locals 0

    .line 316
    iget-boolean p0, p0, Landroid/icu/text/MessagePattern;->hasArgNames:Z

    return p0
.end method

.method public hasNumberedArguments()Z
    .locals 0

    .line 324
    iget-boolean p0, p0, Landroid/icu/text/MessagePattern;->hasArgNumbers:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 286
    iget-object v0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ApostropheMode;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object p0, p0, Landroid/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isFrozen()Z
    .locals 0

    .line 841
    iget-boolean p0, p0, Landroid/icu/text/MessagePattern;->frozen:Z

    return p0
.end method

.method jdkAposMode()Z
    .locals 1

    .line 301
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->aposMode:Landroid/icu/text/MessagePattern$ApostropheMode;

    sget-object v0, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 1

    .line 178
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 179
    sget-object p1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Landroid/icu/text/MessagePattern;->parseMessage(IIILandroid/icu/text/MessagePattern$ArgType;)I

    .line 180
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public parseChoiceStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 195
    invoke-direct {p0, p1, p1}, Landroid/icu/text/MessagePattern;->parseChoiceStyle(II)I

    .line 196
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public parsePluralStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 1

    .line 210
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 211
    sget-object p1, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    .line 212
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public parseSelectStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    .locals 1

    .line 226
    invoke-direct {p0, p1}, Landroid/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 227
    sget-object p1, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/icu/text/MessagePattern;->parsePluralOrSelectStyle(Landroid/icu/text/MessagePattern$ArgType;II)I

    .line 228
    invoke-direct {p0}, Landroid/icu/text/MessagePattern;->postParse()V

    return-object p0
.end method

.method public partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z
    .locals 3

    .line 457
    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->access$300(Landroid/icu/text/MessagePattern$Part;)C

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->access$000(Landroid/icu/text/MessagePattern$Part;)I

    move-result v0

    invoke-static {p1}, Landroid/icu/text/MessagePattern$Part;->access$300(Landroid/icu/text/MessagePattern$Part;)C

    move-result p1

    invoke-virtual {p0, v0, p2, v2, p1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Landroid/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object p0
.end method
