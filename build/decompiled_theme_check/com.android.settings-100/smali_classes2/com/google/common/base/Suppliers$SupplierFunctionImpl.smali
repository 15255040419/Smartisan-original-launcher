.class final enum Lcom/google/common/base/Suppliers$SupplierFunctionImpl;
.super Ljava/lang/Enum;
.source "Suppliers.java"

# interfaces
.implements Lcom/google/common/base/Suppliers$SupplierFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SupplierFunctionImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/Suppliers$SupplierFunctionImpl;",
        ">;",
        "Lcom/google/common/base/Suppliers$SupplierFunction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

.field public static final enum INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunctionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 344
    new-instance v0, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;->INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    .line 343
    sget-object v2, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;->INSTANCE:Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;->$VALUES:[Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/Suppliers$SupplierFunctionImpl;
    .locals 1

    .line 343
    const-class v0, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/Suppliers$SupplierFunctionImpl;
    .locals 1

    .line 343
    sget-object v0, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;->$VALUES:[Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    invoke-virtual {v0}, [Lcom/google/common/base/Suppliers$SupplierFunctionImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/Suppliers$SupplierFunctionImpl;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/google/common/base/Supplier;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 349
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 343
    check-cast p1, Lcom/google/common/base/Supplier;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Suppliers$SupplierFunctionImpl;->apply(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Suppliers.supplierFunction()"

    return-object p0
.end method
