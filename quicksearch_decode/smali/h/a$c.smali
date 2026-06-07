.class public final Lh/a$c;
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
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lf/v;",
        "Lf/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lh/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh/a$c;

    invoke-direct {v0}, Lh/a$c;-><init>()V

    sput-object v0, Lh/a$c;->a:Lh/a$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/v;)Lf/v;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lf/v;

    invoke-virtual {p0, p1}, Lh/a$c;->a(Lf/v;)Lf/v;

    return-object p1
.end method
