.class public Landroid/icu/util/NoUnit;
.super Landroid/icu/util/MeasureUnit;
.source "NoUnit.java"


# static fields
.field public static final BASE:Landroid/icu/util/NoUnit;

.field public static final PERCENT:Landroid/icu/util/NoUnit;

.field public static final PERMILLE:Landroid/icu/util/NoUnit;

.field private static final serialVersionUID:J = 0x223d29f11222bf5fL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "none"

    const-string v1, "base"

    .line 23
    invoke-static {v0, v1}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v1

    check-cast v1, Landroid/icu/util/NoUnit;

    sput-object v1, Landroid/icu/util/NoUnit;->BASE:Landroid/icu/util/NoUnit;

    const-string/jumbo v1, "percent"

    .line 31
    invoke-static {v0, v1}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v1

    check-cast v1, Landroid/icu/util/NoUnit;

    sput-object v1, Landroid/icu/util/NoUnit;->PERCENT:Landroid/icu/util/NoUnit;

    const-string/jumbo v1, "permille"

    .line 39
    invoke-static {v0, v1}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Landroid/icu/util/NoUnit;

    sput-object v0, Landroid/icu/util/NoUnit;->PERMILLE:Landroid/icu/util/NoUnit;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "none"

    .line 49
    invoke-direct {p0, v0, p1}, Landroid/icu/util/MeasureUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
