.class public Lh/c$a;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/c;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lh/o;)Lretrofit2/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lh/c;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lh/c$a;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh/c$a;->adapt(Lretrofit2/Call;)Lretrofit2/Call;

    return-object p1
.end method

.method public adapt(Lretrofit2/Call;)Lretrofit2/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/c$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method
