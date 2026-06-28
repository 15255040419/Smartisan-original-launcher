.class public final enum Landroid/icu/text/PluralRules$Operand;
.super Ljava/lang/Enum;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PluralRules$Operand;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/PluralRules$Operand;

.field public static final enum f:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum i:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum j:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum n:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum t:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum v:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum w:Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 423
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const/4 v1, 0x0

    const-string v2, "n"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    .line 432
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const/4 v2, 0x1

    const-string v3, "i"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    .line 441
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const/4 v3, 0x2

    const-string v4, "f"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    .line 450
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const/4 v4, 0x3

    const-string/jumbo v5, "t"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    .line 459
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const/4 v5, 0x4

    const-string/jumbo v6, "v"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    .line 468
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const/4 v6, 0x5

    const-string/jumbo v7, "w"

    invoke-direct {v0, v7, v6}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    .line 483
    new-instance v0, Landroid/icu/text/PluralRules$Operand;

    const/4 v7, 0x6

    const-string v8, "j"

    invoke-direct {v0, v8, v7}, Landroid/icu/text/PluralRules$Operand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/icu/text/PluralRules$Operand;

    .line 415
    sget-object v8, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    aput-object v8, v0, v1

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    aput-object v1, v0, v7

    sput-object v0, Landroid/icu/text/PluralRules$Operand;->$VALUES:[Landroid/icu/text/PluralRules$Operand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
    .locals 1

    .line 415
    const-class v0, Landroid/icu/text/PluralRules$Operand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/PluralRules$Operand;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/PluralRules$Operand;
    .locals 1

    .line 415
    sget-object v0, Landroid/icu/text/PluralRules$Operand;->$VALUES:[Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v0}, [Landroid/icu/text/PluralRules$Operand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PluralRules$Operand;

    return-object v0
.end method
