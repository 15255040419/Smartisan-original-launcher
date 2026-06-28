.class public final enum Landroid/icu/text/CompactDecimalFormat$CompactStyle;
.super Ljava/lang/Enum;
.source "CompactDecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CompactDecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompactStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/CompactDecimalFormat$CompactStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

.field public static final enum LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

.field public static final enum SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 59
    new-instance v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    const/4 v1, 0x0

    const-string v2, "SHORT"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 63
    new-instance v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    const/4 v2, 0x1

    const-string v3, "LONG"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/CompactDecimalFormat$CompactStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    .line 55
    sget-object v3, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->SHORT:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->LONG:Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->$VALUES:[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .locals 1

    .line 55
    const-class v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/CompactDecimalFormat$CompactStyle;
    .locals 1

    .line 55
    sget-object v0, Landroid/icu/text/CompactDecimalFormat$CompactStyle;->$VALUES:[Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-virtual {v0}, [Landroid/icu/text/CompactDecimalFormat$CompactStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/CompactDecimalFormat$CompactStyle;

    return-object v0
.end method
