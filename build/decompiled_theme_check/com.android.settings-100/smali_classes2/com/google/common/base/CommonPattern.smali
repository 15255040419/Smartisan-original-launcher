.class abstract Lcom/google/common/base/CommonPattern;
.super Ljava/lang/Object;
.source "CommonPattern.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method abstract flags()I
.end method

.method public abstract hashCode()I
.end method

.method abstract matcher(Ljava/lang/CharSequence;)Lcom/google/common/base/CommonMatcher;
.end method

.method abstract pattern()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
