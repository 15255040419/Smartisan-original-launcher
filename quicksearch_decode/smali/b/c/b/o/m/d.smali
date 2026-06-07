.class public final Lb/c/b/o/m/d;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final a:Lb/c/b/o/c;


# direct methods
.method public constructor <init>(Lb/c/b/o/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/c/b/o/m/d;->a:Lb/c/b/o/c;

    return-void
.end method


# virtual methods
.method public a(Lb/c/b/o/c;Lb/c/b/c;Lb/c/b/p/a;Lb/c/b/n/b;)Lb/c/b/m;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/o/c;",
            "Lb/c/b/c;",
            "Lb/c/b/p/a<",
            "*>;",
            "Lb/c/b/n/b;",
            ")",
            "Lb/c/b/m<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lb/c/b/n/b;->value()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lb/c/b/p/a;->a(Ljava/lang/Class;)Lb/c/b/p/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/c/b/o/c;->a(Lb/c/b/p/a;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lb/c/b/m;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lb/c/b/m;

    goto :goto_2

    .line 4
    :cond_0
    instance-of v0, p1, Lcom/google/gson/TypeAdapterFactory;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {p1, p2, p3}, Lcom/google/gson/TypeAdapterFactory;->create(Lb/c/b/c;Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object p1

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_3

    instance-of v1, p1, Lcom/google/gson/JsonDeserializer;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid attempt to bind an instance of "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lb/c/b/p/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 9
    move-object v0, p1

    check-cast v0, Lcom/google/gson/JsonSerializer;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 10
    :goto_1
    instance-of v0, p1, Lcom/google/gson/JsonDeserializer;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/google/gson/JsonDeserializer;

    :cond_5
    move-object v4, v1

    .line 11
    new-instance p1, Lb/c/b/o/m/l;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lb/c/b/o/m/l;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lb/c/b/c;Lb/c/b/p/a;Lcom/google/gson/TypeAdapterFactory;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 12
    invoke-interface {p4}, Lb/c/b/n/b;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 13
    invoke-virtual {p1}, Lb/c/b/m;->a()Lb/c/b/m;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method public create(Lb/c/b/c;Lb/c/b/p/a;)Lb/c/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c/b/c;",
            "Lb/c/b/p/a<",
            "TT;>;)",
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lb/c/b/p/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lb/c/b/n/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb/c/b/n/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lb/c/b/o/m/d;->a:Lb/c/b/o/c;

    invoke-virtual {p0, v1, p1, p2, v0}, Lb/c/b/o/m/d;->a(Lb/c/b/o/c;Lb/c/b/c;Lb/c/b/p/a;Lb/c/b/n/b;)Lb/c/b/m;

    move-result-object p1

    return-object p1
.end method
