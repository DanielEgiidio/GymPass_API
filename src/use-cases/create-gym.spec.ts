import { InMemoryGymsRepository } from "@/repositories/in-memory/in-memory-gyms-repository";
import { UserAlreadyExistsError } from "@/use-cases/errors/user-already-exists-error";
import { compare } from "bcryptjs";
import { expect, describe, it, beforeEach } from "vitest";
import { RegisterUseCase } from "./register";
import { CreateGymUseCase } from "./create-gym";

let gymsRepository: InMemoryGymsRepository;
let sut: CreateGymUseCase;

describe("Register Use Case", () => {
  beforeEach(() => {
    gymsRepository = new InMemoryGymsRepository();
    sut = new CreateGymUseCase(gymsRepository);
  });

  it("should be able to create gym", async () => {
    const { gym } = await sut.execute({
      title: "JavaScript Gym",
      description: "",
      phone: "",
      latitude: 7.0242092,
      longitude: -37.2865065,
    });

    expect(gym.id).toEqual(expect.any(String));
  });
});
