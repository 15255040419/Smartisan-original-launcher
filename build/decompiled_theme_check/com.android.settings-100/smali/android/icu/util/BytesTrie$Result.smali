.class public final enum Landroid/icu/util/BytesTrie$Result;
.super Ljava/lang/Enum;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/BytesTrie$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/BytesTrie$Result;

.field public static final enum FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

.field public static final enum INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

.field public static final enum NO_MATCH:Landroid/icu/util/BytesTrie$Result;

.field public static final enum NO_VALUE:Landroid/icu/util/BytesTrie$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 129
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    const/4 v1, 0x0

    const-string v2, "NO_MATCH"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    .line 135
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    const/4 v2, 0x1

    const-string v3, "NO_VALUE"

    invoke-direct {v0, v3, v2}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 142
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    const/4 v3, 0x2

    const-string v4, "FINAL_VALUE"

    invoke-direct {v0, v4, v3}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 149
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    const/4 v4, 0x3

    const-string v5, "INTERMEDIATE_VALUE"

    invoke-direct {v0, v5, v4}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/util/BytesTrie$Result;

    .line 122
    sget-object v5, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->$VALUES:[Landroid/icu/util/BytesTrie$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/BytesTrie$Result;
    .locals 1

    .line 122
    const-class v0, Landroid/icu/util/BytesTrie$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/util/BytesTrie$Result;

    return-object p0
.end method

.method public static values()[Landroid/icu/util/BytesTrie$Result;
    .locals 1

    .line 122
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->$VALUES:[Landroid/icu/util/BytesTrie$Result;

    invoke-virtual {v0}, [Landroid/icu/util/BytesTrie$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/BytesTrie$Result;

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 172
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Result;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValue()Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Result;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public matches()Z
    .locals 1

    .line 159
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
