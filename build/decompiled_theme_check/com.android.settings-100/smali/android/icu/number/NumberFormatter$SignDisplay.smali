.class public final enum Landroid/icu/number/NumberFormatter$SignDisplay;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberFormatter$SignDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

.field public static final enum NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 178
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-direct {v0, v2, v1}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 186
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v2, 0x1

    const-string v3, "ALWAYS"

    invoke-direct {v0, v3, v2}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 194
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v3, 0x2

    const-string v4, "NEVER"

    invoke-direct {v0, v4, v3}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 211
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v4, 0x3

    const-string v5, "ACCOUNTING"

    invoke-direct {v0, v5, v4}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 220
    new-instance v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v5, 0x4

    const-string v6, "ACCOUNTING_ALWAYS"

    invoke-direct {v0, v6, v5}, Landroid/icu/number/NumberFormatter$SignDisplay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/number/NumberFormatter$SignDisplay;

    .line 170
    sget-object v6, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    aput-object v6, v0, v1

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->NEVER:Landroid/icu/number/NumberFormatter$SignDisplay;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Landroid/icu/number/NumberFormatter$SignDisplay;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Landroid/icu/number/NumberFormatter$SignDisplay;

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->$VALUES:[Landroid/icu/number/NumberFormatter$SignDisplay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/number/NumberFormatter$SignDisplay;
    .locals 1

    .line 170
    const-class v0, Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object p0
.end method

.method public static values()[Landroid/icu/number/NumberFormatter$SignDisplay;
    .locals 1

    .line 170
    sget-object v0, Landroid/icu/number/NumberFormatter$SignDisplay;->$VALUES:[Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v0}, [Landroid/icu/number/NumberFormatter$SignDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberFormatter$SignDisplay;

    return-object v0
.end method
