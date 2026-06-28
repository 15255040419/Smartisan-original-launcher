.class public Landroid/icu/impl/Row$R2;
.super Landroid/icu/impl/Row;
.source "Row.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Row;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "R2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C0:",
        "Ljava/lang/Object;",
        "C1:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/Row<",
        "TC0;TC1;TC1;TC1;TC1;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC0;TC1;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroid/icu/impl/Row;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 44
    iput-object v0, p0, Landroid/icu/impl/Row$R2;->items:[Ljava/lang/Object;

    return-void
.end method
