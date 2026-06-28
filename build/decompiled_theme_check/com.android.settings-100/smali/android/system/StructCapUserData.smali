.class public final Landroid/system/StructCapUserData;
.super Ljava/lang/Object;
.source "StructCapUserData.java"


# instance fields
.field public final effective:I

.field public final inheritable:I

.field public final permitted:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/system/StructCapUserData;->effective:I

    .line 41
    iput p2, p0, Landroid/system/StructCapUserData;->permitted:I

    .line 42
    iput p3, p0, Landroid/system/StructCapUserData;->inheritable:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Llibcore/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
