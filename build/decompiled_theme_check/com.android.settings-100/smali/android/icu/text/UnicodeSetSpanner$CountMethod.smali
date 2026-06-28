.class public final enum Landroid/icu/text/UnicodeSetSpanner$CountMethod;
.super Ljava/lang/Enum;
.source "UnicodeSetSpanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UnicodeSetSpanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CountMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/UnicodeSetSpanner$CountMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

.field public static final enum MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

.field public static final enum WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 94
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    const/4 v1, 0x0

    const-string v2, "WHOLE_SPAN"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/UnicodeSetSpanner$CountMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    .line 106
    new-instance v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    const/4 v2, 0x1

    const-string v3, "MIN_ELEMENTS"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/UnicodeSetSpanner$CountMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    .line 89
    sget-object v3, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->WHOLE_SPAN:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->MIN_ELEMENTS:Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .locals 1

    .line 89
    const-class v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/UnicodeSetSpanner$CountMethod;
    .locals 1

    .line 89
    sget-object v0, Landroid/icu/text/UnicodeSetSpanner$CountMethod;->$VALUES:[Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    invoke-virtual {v0}, [Landroid/icu/text/UnicodeSetSpanner$CountMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/UnicodeSetSpanner$CountMethod;

    return-object v0
.end method
