.class Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;
.super Ljava/lang/Object;
.source "FuturesGetChecked.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/FuturesGetChecked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetCheckedTypeValidatorHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$WeakSetValidator;,
        Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder$ClassValueValidator;
    }
.end annotation


# static fields
.field static final BEST_VALIDATOR:Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

.field static final CLASS_VALUE_VALIDATOR_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$ClassValueValidator"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->CLASS_VALUE_VALIDATOR_NAME:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->getBestValidator()Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->BEST_VALIDATOR:Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBestValidator()Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;
    .locals 2

    .line 189
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidatorHolder;->CLASS_VALUE_VALIDATOR_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 192
    :catchall_0
    invoke-static {}, Lcom/google/common/util/concurrent/FuturesGetChecked;->weakSetValidator()Lcom/google/common/util/concurrent/FuturesGetChecked$GetCheckedTypeValidator;

    move-result-object v0

    return-object v0
.end method
