.class final enum Lcom/google/common/base/Functions$ToStringFunction;
.super Ljava/lang/Enum;
.source "Functions.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ToStringFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/Functions$ToStringFunction;",
        ">;",
        "Lcom/google/common/base/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Functions$ToStringFunction;

.field public static final enum INSTANCE:Lcom/google/common/base/Functions$ToStringFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lcom/google/common/base/Functions$ToStringFunction;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/base/Functions$ToStringFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Functions$ToStringFunction;->INSTANCE:Lcom/google/common/base/Functions$ToStringFunction;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Functions$ToStringFunction;

    .line 64
    sget-object v2, Lcom/google/common/base/Functions$ToStringFunction;->INSTANCE:Lcom/google/common/base/Functions$ToStringFunction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/base/Functions$ToStringFunction;->$VALUES:[Lcom/google/common/base/Functions$ToStringFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Functions$ToStringFunction;
    .locals 1

    .line 64
    const-class v0, Lcom/google/common/base/Functions$ToStringFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Functions$ToStringFunction;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/Functions$ToStringFunction;
    .locals 1

    .line 64
    sget-object v0, Lcom/google/common/base/Functions$ToStringFunction;->$VALUES:[Lcom/google/common/base/Functions$ToStringFunction;

    invoke-virtual {v0}, [Lcom/google/common/base/Functions$ToStringFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Functions$ToStringFunction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/common/base/Functions$ToStringFunction;->apply(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Functions.toStringFunction()"

    return-object p0
.end method
