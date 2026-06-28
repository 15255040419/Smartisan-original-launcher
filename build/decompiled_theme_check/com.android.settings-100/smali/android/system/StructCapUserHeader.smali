.class public final Landroid/system/StructCapUserHeader;
.super Ljava/lang/Object;
.source "StructCapUserHeader.java"


# instance fields
.field public final pid:I

.field public version:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/system/StructCapUserHeader;->version:I

    .line 42
    iput p2, p0, Landroid/system/StructCapUserHeader;->pid:I

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
