.class final enum Landroid/icu/text/SimpleDateFormat$ContextValue;
.super Ljava/lang/Enum;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SimpleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ContextValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/SimpleDateFormat$ContextValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/SimpleDateFormat$ContextValue;

.field public static final enum UNKNOWN:Landroid/icu/text/SimpleDateFormat$ContextValue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 961
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->UNKNOWN:Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 962
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const/4 v2, 0x1

    const-string v3, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 963
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const/4 v3, 0x2

    const-string v4, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 964
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const/4 v4, 0x3

    const-string v5, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 965
    new-instance v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    const/4 v5, 0x4

    const-string v6, "CAPITALIZATION_FOR_STANDALONE"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/SimpleDateFormat$ContextValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/icu/text/SimpleDateFormat$ContextValue;

    .line 959
    sget-object v6, Landroid/icu/text/SimpleDateFormat$ContextValue;->UNKNOWN:Landroid/icu/text/SimpleDateFormat$ContextValue;

    aput-object v6, v0, v1

    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/SimpleDateFormat$ContextValue;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/SimpleDateFormat$ContextValue;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/SimpleDateFormat$ContextValue;

    aput-object v1, v0, v5

    sput-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->$VALUES:[Landroid/icu/text/SimpleDateFormat$ContextValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 960
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/SimpleDateFormat$ContextValue;
    .locals 1

    .line 959
    const-class v0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/SimpleDateFormat$ContextValue;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/SimpleDateFormat$ContextValue;
    .locals 1

    .line 959
    sget-object v0, Landroid/icu/text/SimpleDateFormat$ContextValue;->$VALUES:[Landroid/icu/text/SimpleDateFormat$ContextValue;

    invoke-virtual {v0}, [Landroid/icu/text/SimpleDateFormat$ContextValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/SimpleDateFormat$ContextValue;

    return-object v0
.end method
