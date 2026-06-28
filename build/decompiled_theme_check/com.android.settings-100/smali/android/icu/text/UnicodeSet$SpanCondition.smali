.class public final enum Landroid/icu/text/UnicodeSet$SpanCondition;
.super Ljava/lang/Enum;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpanCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/UnicodeSet$SpanCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum CONDITION_COUNT:Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

.field public static final enum SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4694
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v1, 0x0

    const-string v2, "NOT_CONTAINED"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4708
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v2, 0x1

    const-string v3, "CONTAINED"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4726
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v3, 0x2

    const-string v4, "SIMPLE"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4731
    new-instance v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v4, 0x3

    const-string v5, "CONDITION_COUNT"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->CONDITION_COUNT:Landroid/icu/text/UnicodeSet$SpanCondition;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/UnicodeSet$SpanCondition;

    .line 4684
    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Landroid/icu/text/UnicodeSet$SpanCondition;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/UnicodeSet$SpanCondition;->CONDITION_COUNT:Landroid/icu/text/UnicodeSet$SpanCondition;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Landroid/icu/text/UnicodeSet$SpanCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4684
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSet$SpanCondition;
    .locals 1

    .line 4684
    const-class v0, Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/UnicodeSet$SpanCondition;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/UnicodeSet$SpanCondition;
    .locals 1

    .line 4684
    sget-object v0, Landroid/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Landroid/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v0}, [Landroid/icu/text/UnicodeSet$SpanCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/UnicodeSet$SpanCondition;

    return-object v0
.end method
