.class public final enum Landroid/icu/text/MessagePattern$Part$Type;
.super Ljava/lang/Enum;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern$Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/MessagePattern$Part$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

.field public static final enum SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 597
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v1, 0x0

    const-string v2, "MSG_START"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    .line 605
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v2, 0x1

    const-string v3, "MSG_LIMIT"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    .line 612
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v3, 0x2

    const-string v4, "SKIP_SYNTAX"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    .line 618
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v4, 0x3

    const-string v5, "INSERT_CHAR"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    .line 625
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v5, 0x4

    const-string v6, "REPLACE_NUMBER"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    .line 635
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v6, 0x5

    const-string v7, "ARG_START"

    invoke-direct {v0, v7, v6}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    .line 641
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v7, 0x6

    const-string v8, "ARG_LIMIT"

    invoke-direct {v0, v8, v7}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    .line 645
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/4 v8, 0x7

    const-string v9, "ARG_NUMBER"

    invoke-direct {v0, v9, v8}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    .line 650
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v9, 0x8

    const-string v10, "ARG_NAME"

    invoke-direct {v0, v10, v9}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    .line 655
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v10, 0x9

    const-string v11, "ARG_TYPE"

    invoke-direct {v0, v11, v10}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    .line 660
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v11, 0xa

    const-string v12, "ARG_STYLE"

    invoke-direct {v0, v12, v11}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    .line 665
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v12, 0xb

    const-string v13, "ARG_SELECTOR"

    invoke-direct {v0, v13, v12}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    .line 671
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v13, 0xc

    const-string v14, "ARG_INT"

    invoke-direct {v0, v14, v13}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    .line 678
    new-instance v0, Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v14, 0xd

    const-string v15, "ARG_DOUBLE"

    invoke-direct {v0, v15, v14}, Landroid/icu/text/MessagePattern$Part$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    const/16 v0, 0xe

    new-array v0, v0, [Landroid/icu/text/MessagePattern$Part$Type;

    .line 588
    sget-object v15, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v15, v0, v1

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v11

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v12

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v13

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    aput-object v1, v0, v14

    sput-object v0, Landroid/icu/text/MessagePattern$Part$Type;->$VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 588
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    .line 588
    const-class v0, Landroid/icu/text/MessagePattern$Part$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/MessagePattern$Part$Type;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    .line 588
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->$VALUES:[Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v0}, [Landroid/icu/text/MessagePattern$Part$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method


# virtual methods
.method public hasNumericValue()Z
    .locals 1

    .line 686
    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_INT:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
