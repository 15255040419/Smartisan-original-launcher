.class public final Lh/a$e;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lf/v;",
        "Ld/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lh/a$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh/a$e;

    invoke-direct {v0}, Lh/a$e;-><init>()V

    sput-object v0, Lh/a$e;->a:Lh/a$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/v;)Ld/j;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lf/v;->close()V

    .line 2
    sget-object p1, Ld/j;->a:Ld/j;

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lf/v;

    invoke-virtual {p0, p1}, Lh/a$e;->a(Lf/v;)Ld/j;

    move-result-object p1

    return-object p1
.end method
