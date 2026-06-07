.class public final enum Lkotlin/reflect/KParameter$a;
.super Ljava/lang/Enum;
.source "KParameter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/KParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/reflect/KParameter$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lkotlin/reflect/KParameter$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KParameter$a;

    new-instance v1, Lkotlin/reflect/KParameter$a;

    const/4 v2, 0x0

    const-string v3, "INSTANCE"

    invoke-direct {v1, v3, v2}, Lkotlin/reflect/KParameter$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/reflect/KParameter$a;

    const/4 v2, 0x1

    const-string v3, "EXTENSION_RECEIVER"

    invoke-direct {v1, v3, v2}, Lkotlin/reflect/KParameter$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/reflect/KParameter$a;

    const/4 v2, 0x2

    const-string v3, "VALUE"

    invoke-direct {v1, v3, v2}, Lkotlin/reflect/KParameter$a;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/KParameter$a;->a:[Lkotlin/reflect/KParameter$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/KParameter$a;
    .locals 1

    const-class v0, Lkotlin/reflect/KParameter$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KParameter$a;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/KParameter$a;
    .locals 1

    sget-object v0, Lkotlin/reflect/KParameter$a;->a:[Lkotlin/reflect/KParameter$a;

    invoke-virtual {v0}, [Lkotlin/reflect/KParameter$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/KParameter$a;

    return-object v0
.end method
