.class final enum Landroid/icu/impl/coll/CollationRuleParser$Position;
.super Ljava/lang/Enum;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationRuleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/coll/CollationRuleParser$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

.field public static final enum LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 36
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v1, 0x0

    const-string v2, "FIRST_TERTIARY_IGNORABLE"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 37
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v2, 0x1

    const-string v3, "LAST_TERTIARY_IGNORABLE"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 38
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v3, 0x2

    const-string v4, "FIRST_SECONDARY_IGNORABLE"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 39
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v4, 0x3

    const-string v5, "LAST_SECONDARY_IGNORABLE"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 40
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v5, 0x4

    const-string v6, "FIRST_PRIMARY_IGNORABLE"

    invoke-direct {v0, v6, v5}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 41
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v6, 0x5

    const-string v7, "LAST_PRIMARY_IGNORABLE"

    invoke-direct {v0, v7, v6}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 42
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v7, 0x6

    const-string v8, "FIRST_VARIABLE"

    invoke-direct {v0, v8, v7}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 43
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/4 v8, 0x7

    const-string v9, "LAST_VARIABLE"

    invoke-direct {v0, v9, v8}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 44
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v9, 0x8

    const-string v10, "FIRST_REGULAR"

    invoke-direct {v0, v10, v9}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 45
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v10, 0x9

    const-string v11, "LAST_REGULAR"

    invoke-direct {v0, v11, v10}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 46
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v11, 0xa

    const-string v12, "FIRST_IMPLICIT"

    invoke-direct {v0, v12, v11}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 47
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v12, 0xb

    const-string v13, "LAST_IMPLICIT"

    invoke-direct {v0, v13, v12}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 48
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v13, 0xc

    const-string v14, "FIRST_TRAILING"

    invoke-direct {v0, v14, v13}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 49
    new-instance v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v14, 0xd

    const-string v15, "LAST_TRAILING"

    invoke-direct {v0, v15, v14}, Landroid/icu/impl/coll/CollationRuleParser$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v0, 0xe

    new-array v0, v0, [Landroid/icu/impl/coll/CollationRuleParser$Position;

    .line 35
    sget-object v15, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v15, v0, v1

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TERTIARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_SECONDARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_PRIMARY_IGNORABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v6

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v7

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v8

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v9

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v10

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v11

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_IMPLICIT:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v12

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->FIRST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v13

    sget-object v1, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_TRAILING:Landroid/icu/impl/coll/CollationRuleParser$Position;

    aput-object v1, v0, v14

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/coll/CollationRuleParser$Position;
    .locals 1

    .line 35
    const-class v0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/coll/CollationRuleParser$Position;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/coll/CollationRuleParser$Position;
    .locals 1

    .line 35
    sget-object v0, Landroid/icu/impl/coll/CollationRuleParser$Position;->$VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v0}, [Landroid/icu/impl/coll/CollationRuleParser$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/coll/CollationRuleParser$Position;

    return-object v0
.end method
