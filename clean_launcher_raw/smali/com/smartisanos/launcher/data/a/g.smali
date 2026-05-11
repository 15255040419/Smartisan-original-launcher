.class synthetic Lcom/smartisanos/launcher/data/a/g;
.super Ljava/lang/Object;
.source "IconDB.java"


# static fields
.field static final synthetic ms:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants$IconType;->values()[Lcom/smartisanos/launcher/data/Constants$IconType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/smartisanos/launcher/data/a/g;->ms:[I

    :try_start_0
    sget-object v0, Lcom/smartisanos/launcher/data/a/g;->ms:[I

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$IconType;->RZ:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/smartisanos/launcher/data/a/g;->ms:[I

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$IconType;->SZ:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/smartisanos/launcher/data/a/g;->ms:[I

    sget-object v1, Lcom/smartisanos/launcher/data/Constants$IconType;->TZ:Lcom/smartisanos/launcher/data/Constants$IconType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
