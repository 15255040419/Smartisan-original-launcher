.class public final enum Landroid/icu/text/DisplayContext$Type;
.super Ljava/lang/Enum;
.source "DisplayContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayContext$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DisplayContext$Type;

.field public static final enum CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

.field public static final enum DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

.field public static final enum DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

.field public static final enum SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 106
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    const/4 v1, 0x0

    const-string v2, "DIALECT_HANDLING"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    .line 111
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    const/4 v2, 0x1

    const-string v3, "CAPITALIZATION"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    .line 115
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    const/4 v3, 0x2

    const-string v4, "DISPLAY_LENGTH"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    .line 119
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    const/4 v4, 0x3

    const-string v5, "SUBSTITUTE_HANDLING"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/DisplayContext$Type;

    .line 102
    sget-object v5, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->$VALUES:[Landroid/icu/text/DisplayContext$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayContext$Type;
    .locals 1

    .line 102
    const-class v0, Landroid/icu/text/DisplayContext$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DisplayContext$Type;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/DisplayContext$Type;
    .locals 1

    .line 102
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->$VALUES:[Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayContext$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayContext$Type;

    return-object v0
.end method
