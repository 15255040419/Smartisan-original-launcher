.class public final Lh/j$m;
.super Lh/j;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/j<",
        "Lf/o$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lh/j$m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh/j$m;

    invoke-direct {v0}, Lh/j$m;-><init>()V

    sput-object v0, Lh/j$m;->a:Lh/j$m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/l;Lf/o$b;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Lh/l;->a(Lf/o$b;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lh/l;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lf/o$b;

    invoke-virtual {p0, p1, p2}, Lh/j$m;->a(Lh/l;Lf/o$b;)V

    return-void
.end method
