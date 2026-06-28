.class public final enum Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
.super Ljava/lang/Enum;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex$Bucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 881
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 885
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v2, 0x1

    const-string v3, "UNDERFLOW"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 889
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v3, 0x2

    const-string v4, "INFLOW"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 893
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v4, 0x3

    const-string v5, "OVERFLOW"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 877
    sget-object v5, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->$VALUES:[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 877
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    .line 877
    const-class v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .locals 1

    .line 877
    sget-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->$VALUES:[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-virtual {v0}, [Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object v0
.end method
