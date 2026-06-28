.class public final enum Landroid/icu/text/DisplayContext;
.super Ljava/lang/Enum;
.source "DisplayContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DisplayContext$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

.field public static final enum CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

.field public static final enum DIALECT_NAMES:Landroid/icu/text/DisplayContext;

.field public static final enum LENGTH_FULL:Landroid/icu/text/DisplayContext;

.field public static final enum LENGTH_SHORT:Landroid/icu/text/DisplayContext;

.field public static final enum NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

.field public static final enum STANDARD_NAMES:Landroid/icu/text/DisplayContext;

.field public static final enum SUBSTITUTE:Landroid/icu/text/DisplayContext;


# instance fields
.field private final type:Landroid/icu/text/DisplayContext$Type;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 26
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    const/4 v2, 0x0

    const-string v3, "STANDARD_NAMES"

    invoke-direct {v0, v3, v2, v1, v2}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    .line 32
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    const/4 v3, 0x1

    const-string v4, "DIALECT_NAMES"

    invoke-direct {v0, v4, v3, v1, v3}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    .line 41
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const/4 v4, 0x2

    const-string v5, "CAPITALIZATION_NONE"

    invoke-direct {v0, v5, v4, v1, v2}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 47
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const/4 v5, 0x3

    const-string v6, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    invoke-direct {v0, v6, v5, v1, v3}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 53
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const/4 v6, 0x4

    const-string v7, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    invoke-direct {v0, v7, v6, v1, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 59
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const/4 v7, 0x5

    const-string v8, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    invoke-direct {v0, v8, v7, v1, v5}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    .line 66
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const/4 v8, 0x6

    const-string v9, "CAPITALIZATION_FOR_STANDALONE"

    invoke-direct {v0, v9, v8, v1, v6}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    .line 76
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    const/4 v9, 0x7

    const-string v10, "LENGTH_FULL"

    invoke-direct {v0, v10, v9, v1, v2}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    .line 82
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    const/16 v10, 0x8

    const-string v11, "LENGTH_SHORT"

    invoke-direct {v0, v11, v10, v1, v3}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    .line 92
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;

    const/16 v11, 0x9

    const-string v12, "SUBSTITUTE"

    invoke-direct {v0, v12, v11, v1, v2}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    .line 97
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;

    const/16 v12, 0xa

    const-string v13, "NO_SUBSTITUTE"

    invoke-direct {v0, v13, v12, v1, v3}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

    const/16 v0, 0xb

    new-array v0, v0, [Landroid/icu/text/DisplayContext;

    .line 16
    sget-object v1, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v11

    sget-object v1, Landroid/icu/text/DisplayContext;->NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

    aput-object v1, v0, v12

    sput-object v0, Landroid/icu/text/DisplayContext;->$VALUES:[Landroid/icu/text/DisplayContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DisplayContext$Type;",
            "I)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput-object p3, p0, Landroid/icu/text/DisplayContext;->type:Landroid/icu/text/DisplayContext$Type;

    .line 126
    iput p4, p0, Landroid/icu/text/DisplayContext;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayContext;
    .locals 1

    .line 16
    const-class v0, Landroid/icu/text/DisplayContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DisplayContext;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/DisplayContext;
    .locals 1

    .line 16
    sget-object v0, Landroid/icu/text/DisplayContext;->$VALUES:[Landroid/icu/text/DisplayContext;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayContext;

    return-object v0
.end method


# virtual methods
.method public type()Landroid/icu/text/DisplayContext$Type;
    .locals 0

    .line 133
    iget-object p0, p0, Landroid/icu/text/DisplayContext;->type:Landroid/icu/text/DisplayContext$Type;

    return-object p0
.end method

.method public value()I
    .locals 0

    .line 140
    iget p0, p0, Landroid/icu/text/DisplayContext;->value:I

    return p0
.end method
